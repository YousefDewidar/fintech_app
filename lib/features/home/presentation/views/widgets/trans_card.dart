import 'package:fintech_app/core/widgets/space.dart';
import 'package:fintech_app/features/home/data/model/trans_model.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.trans});
  final Transaction trans;

  @override
  Widget build(BuildContext context) {
    Color col = Colors.redAccent;
    if (trans.money.contains('+')) {
      col = Colors.greenAccent;
    }
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(bottom: 10),
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        children: [
          const SpaceH(15),
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color.fromARGB(66, 105, 240, 175),
            child: Icon(trans.icon, color: Colors.orange),
          ),
          const SpaceH(17),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trans.title,
                style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(232, 0, 0, 0),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                trans.desc,
                style: const TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ],
          ),
          const Spacer(),
          Text(
            trans.money,
            style: TextStyle(
                fontSize: 21, color: col, fontWeight: FontWeight.w500),
          ),
          const SpaceH(15),
        ],
      ),
    );
  }
}
