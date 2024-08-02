import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final String desc;
  final String money;
  final IconData icon;
  Transaction(
      {required this.title,
      required this.desc,
      required this.money,
      required this.icon});
}
