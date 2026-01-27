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

// --- TABLES ---

@DataClassName('ProductEntity')
class Products extends Table {
  TextColumn get id => text()();
  TextColumn get originalId => text().withDefault(const Constant(""))();
  TextColumn get title => text().withDefault(const Constant(""))();
  TextColumn get brand => text().withDefault(const Constant(""))();
  TextColumn get description => text().withDefault(const Constant(""))();
  TextColumn get actualPrice => text().withDefault(const Constant(""))();
  TextColumn get sellingPrice => text().withDefault(const Constant(""))();
  TextColumn get discount => text().withDefault(const Constant(""))();
  IntColumn get priceNumeric => integer().withDefault(const Constant(0))();
  RealColumn get discountPercentage => real().withDefault(const Constant(0.0))();
  TextColumn get category => text().withDefault(const Constant(""))();
  TextColumn get subCategory => text().withDefault(const Constant(""))();
  BoolColumn get outOfStock => boolean().withDefault(const Constant(false))();
  TextColumn get seller => text().withDefault(const Constant(""))();
  TextColumn get averageRating => text().withDefault(const Constant(""))();
  RealColumn get ratingNumeric => real().withDefault(const Constant(0.0))();
  TextColumn get images => text().map(const StringListConverter())();
  TextColumn get productDetails => text().map(const ProductDetailsConverter()).nullable()();
  TextColumn get primaryImage => text().withDefault(const Constant(""))();
  TextColumn get url => text().withDefault(const Constant(""))();
  TextColumn get pid => text().withDefault(const Constant(""))();
  TextColumn get styleCode => text().withDefault(const Constant(""))();
  DateTimeColumn get crawledAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  IntColumn get viewCount => integer().withDefault(const Constant(0))();
  IntColumn get clickCount => integer().withDefault(const Constant(0))();
  BoolColumn get featured => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

// --- DATABASE CLASS ---

@DriftDatabase(tables: [Products])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Helper method to save the entire list from the ApiResponse
  Future<void> saveProducts(List<ProductData> items) async {
    await batch((batch) {
      batch.insertAllOnConflictUpdate(
        products,
        items.map((item) => ProductEntity.fromJson(item.toJson())).toList(),
      );
    });
  }

  // Helper to retrieve all cached products as your Freezed model
  Future<List<ProductData>> getAllProducts() async {
    final result = await select(products).get();
    return result.map((row) => ProductData.fromJson(row.toJson())).toList();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}