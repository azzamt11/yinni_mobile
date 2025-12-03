// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankAccount _$BankAccountFromJson(Map<String, dynamic> json) => _BankAccount(
  bankIcon: json['bankIcon'] as String? ?? "",
  userName: json['userName'] as String? ?? "",
  bankId: json['bankId'] as String,
  userId: json['userId'] as String,
  number: json['number'] as String? ?? "",
  bankName: json['bankName'] as String? ?? "",
);

Map<String, dynamic> _$BankAccountToJson(_BankAccount instance) =>
    <String, dynamic>{
      'bankIcon': instance.bankIcon,
      'userName': instance.userName,
      'bankId': instance.bankId,
      'userId': instance.userId,
      'number': instance.number,
      'bankName': instance.bankName,
    };
