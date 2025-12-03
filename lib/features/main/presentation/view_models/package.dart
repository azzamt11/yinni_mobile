import 'dart:math';

import 'package:bin_mahfudz_mobile/features/main/data/models/bank_account.dart';
import 'package:bin_mahfudz_mobile/features/main/data/models/package_data.dart';
import 'package:bin_mahfudz_mobile/features/main/data/models/package_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


String _formatPrice(double? price, int? exponent) {
  if (price == null) return "N/A";
  
  final rawValue = price * pow(10, exponent?.toInt() ?? 0); 

  final formatter = NumberFormat.currency(
    locale: 'de_DE',
    symbol: r'$',
    decimalDigits: 2,
  );

  return formatter.format(rawValue).replaceAll(",00", ",-");
}

String _formatDate(DateTime dateTime) {
  final DateFormat formatter = DateFormat('d MMMM y');
  return formatter.format(dateTime);
}

class $BankAccount {
  final String iconUrl;
  final String bankName;
  final String accountUserName;
  final String userId;

  $BankAccount({
    required this.iconUrl,
    required this.bankName,
    required this.accountUserName,
    required this.userId,
  });

  factory $BankAccount.fromBankAccount(BankAccount data) {
    return $BankAccount(
      iconUrl: data.bankIcon,
      bankName: data.bankName,
      accountUserName: data.userName,
      userId: data.userId,
    );
  }
}

class $PackageItem {
  final String id;
  final String image;
  final String title;
  final List<PackageSubItem> subItem;
  final String originalPrice;
  final String discountedPrice;
  final List<$BankAccount> bankAccounts;

  $PackageItem({
    required this.id,
    required this.image,
    required this.title,
    required this.subItem,
    required this.originalPrice,
    required this.discountedPrice,
    required this.bankAccounts,
  });

  factory $PackageItem.fromPackageItem(PackageItem data) {
    final mappedBankAccounts = data.bankAccounts
      .map((e) => $BankAccount.fromBankAccount(e))
      .toList();
    final formattedOriginalPrice = _formatPrice(data.originalPrice, data.originalExponent);
    final formattedDiscountedPrice = _formatPrice(data.discountedPrice, data.discountedExponent);
    final formattedDate = _formatDate(data.date);
    final subItem = [
      PackageSubItem(icon: "assets/features/home/calendar.png", text: formattedDate),
      PackageSubItem(icon: "assets/features/home/location.png", text: data.location),
      PackageSubItem(icon: "assets/features/home/transportation.png", text: data.transportation),
      PackageSubItem(icon: "assets/features/home/duration.png", text: "${data.duration} hari"),
      PackageSubItem(icon: "assets/features/home/heart.png", text: "", widget: Row(
        spacing: 1, 
        children: List.generate(
          data.rating, 
          (i)=> Image.asset("assets/features/home/star.png", height: 12, width : 12)
        )
      )),
    ];

    return $PackageItem(
      id: data.id,
      image: data.image ,
      title: data.name,
      subItem: subItem,
      originalPrice: formattedOriginalPrice,
      discountedPrice: formattedDiscountedPrice,
      bankAccounts: mappedBankAccounts,
    );
  }
}

class PackageSubItem {
  final String? icon;
  final String? text;
  final Widget? widget;

  PackageSubItem({
    required this.icon,
    required this.text,
    this.widget
  });
}

class Package {
  final String? date;
  final List<$PackageItem> items;

  Package({
    required this.date,
    required this.items,
  });

  factory Package.fromPackageData(PackageData? data) {
    return Package(
      date: data?.date.toString(),
      items: (data?.items ?? []).map((e) => $PackageItem.fromPackageItem(e)).toList(),
    );
  }
}