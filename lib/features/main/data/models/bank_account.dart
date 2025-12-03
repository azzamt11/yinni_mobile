import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'bank_account.freezed.dart';
part 'bank_account.g.dart';

@freezed
@HiveType(typeId: 5)
abstract class BankAccount with _$BankAccount {
  const factory BankAccount({
    @HiveField(0) @Default("") String bankIcon,
    @HiveField(1) @Default("") String userName,
    @HiveField(2) required String bankId,
    @HiveField(3) required String userId,
    @HiveField(4) @Default("") String number,
    @HiveField(5) @Default("") String bankName,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) => _$BankAccountFromJson(json);
  static const fromJsonFactory = _$BankAccountFromJson;
  static const toJsonConverter = _$BankAccountFromJson;
}