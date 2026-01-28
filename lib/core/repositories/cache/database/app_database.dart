import 'dart:convert';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:yinni_mobile/features/main/data/models/product_data.dart';
import 'package:yinni_mobile/features/main/data/models/product_details.dart';

part 'app_database.g.dart';

// --- TYPE CONVERTERS ---

// Converts ProductDetails object to/from JSON String for SQL storage
class ProductDetailsConverter extends TypeConverter<ProductDetails, String> {
  const ProductDetailsConverter();
  @override
  ProductDetails fromSql(String fromDb) => ProductDetails.fromJson(json.decode(fromDb));
  @override
  String toSql(ProductDetails value) => json.encode(value.toJson());
}

// Converts List<String> to/from JSON String for SQL storage
class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();
  @override
  List<String> fromSql(String fromDb) => (json.decode(fromDb) as List).cast<String>();
  @override
  String toSql(List<String> value) => json.encode(value);
}

// Converts ProductData object to/from JSON String for SQL storage
class ProductDataConverter extends TypeConverter<ProductData, String> {
  const ProductDataConverter();
  @override
  ProductData fromSql(String fromDb) => ProductData.fromJson(json.decode(fromDb));
  @override
  String toSql(ProductData value) => json.encode(value.toJson());
}

// --- TABLES ---

@DataClassName('ProductEntity')
class Products extends Table {
  TextColumn get id => text()();
  TextColumn get data => text().map(const ProductDataConverter())();

  @override
  Set<Column> get primaryKey => {id};
}

// --- DATABASE CLASS ---

@DriftDatabase(tables: [Products])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> saveProducts(List<ProductData> items) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(
        products,
        items.map((item) => ProductEntity(
          id: item.id, 
          data: item,
        )).toList(),
      );
    });
  }

  Future<List<ProductData>> getAllProducts() async {
    final result = await select(products).get();
    return result.map((row) => row.data).toList();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}