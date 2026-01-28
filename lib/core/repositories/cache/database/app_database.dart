import 'dart:convert';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:yinni_mobile/features/main/data/models/product_data.dart';

part 'app_database.g.dart';

// --- TYPE CONVERTERS ---
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

@DataClassName('AuthTokenEntity')
class AuthTokens extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

// --- DATABASE CLASS ---

@DriftDatabase(tables: [Products, AuthTokens])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // ---------------------------------------------------------------------------
  // PRODUCT SERVICE LOGIC
  // ---------------------------------------------------------------------------
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

  // ---------------------------------------------------------------------------
  // AUTH SERVICE LOGIC
  // ---------------------------------------------------------------------------
  
  /// Saves a token (updates if exists)
  Future<void> saveToken(String key, String value) async {
    await into(authTokens).insertOnConflictUpdate(
      AuthTokenEntity(key: key, value: value),
    );
  }

  /// Retrieves a token by key
  Future<String?> getToken(String key) async {
    final query = select(authTokens)..where((t) => t.key.equals(key));
    final row = await query.getSingleOrNull();
    return row?.value;
  }

  /// Clears all tokens (Logout)
  Future<void> clearAuth() => delete(authTokens).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}