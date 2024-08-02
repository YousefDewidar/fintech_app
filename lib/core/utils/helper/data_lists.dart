import 'package:fintech_app/features/home/data/model/earn_model.dart';
import 'package:fintech_app/features/home/data/model/trans_model.dart';
import 'package:flutter/material.dart';

class DataLists {
  static List<Transaction> tranList = [
    Transaction(
      title: 'Adobe Illustrator',
      desc: 'Subcription fee',
      money: '-\$32.00',
      icon: Icons.laptop,
    ),
    Transaction(
      title: 'Dribbble',
      desc: 'Subcription fee',
      money: '-\$15.00',
      icon: Icons.laptop,
    ),
    Transaction(
      title: 'Sony Camera',
      desc: 'Shopping fee',
      money: '-\$200.00',
      icon: Icons.shopify_sharp,
    ),
    Transaction(
      title: 'Paypal',
      desc: 'Salary',
      money: '+\$32.00',
      icon: Icons.credit_card_outlined,
    ),
  ];

  static List<EarnModel> earnList = [
    EarnModel(title: 'Upwork', money: '\$ 3,000',color:Colors.deepPurpleAccent),
    EarnModel(title: 'Freepik', money: '\$ 1,000',color:Colors.orangeAccent),
    EarnModel(title: 'Wuzzuf', money: '\$ 2,000',color:Colors.greenAccent),
  ];
}
