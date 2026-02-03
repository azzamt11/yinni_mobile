import 'dart:convert';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:yinni_mobile/features/auth/data/models/user_data.dart';
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

class UserDataConverter extends TypeConverter<UserData, String> {
  const UserDataConverter();

  @override
  UserData fromSql(String fromDb) =>
      UserData.fromJson(json.decode(fromDb));

  @override
  String toSql(UserData value) =>
      json.encode(value.toJson());
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

@DataClassName('UserEntity')
class Users extends Table {
  TextColumn get id => text()();
  TextColumn get data => text().map(const UserDataConverter())();

  @override
  Set<Column> get primaryKey => {id};
}



// --- DATABASE CLASS ---

@DriftDatabase(tables: [Products, AuthTokens, Users])
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

  Future<void> saveToken(String key, String value) async {
    await into(authTokens).insertOnConflictUpdate(
      AuthTokenEntity(key: key, value: value),
    );
  }

  Future<String?> getToken(String key) async {
    final query = select(authTokens)..where((t) => t.key.equals(key));
    final row = await query.getSingleOrNull();
    return row?.value;
  }

  Future<void> saveUser(UserData user) async {
    await into(users).insertOnConflictUpdate(
      UserEntity(id: user.id, data: user),
    );
  }

  Future<UserData?> getCurrentUser() async {
    final row = await select(users).getSingleOrNull();
    return row?.data;
  }

  Future<void> clearAuth() async {
    await batch((batch) {
      batch.deleteAll(authTokens);
      batch.deleteAll(users);
    });
  }
}


// --- CONNECTION ---

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}