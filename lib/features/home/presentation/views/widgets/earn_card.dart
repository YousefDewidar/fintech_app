import 'package:fintech_app/core/widgets/space.dart';
import 'package:fintech_app/features/home/data/model/earn_model.dart';
import 'package:flutter/material.dart';

class EarnCard extends StatelessWidget {
  const EarnCard({super.key, required this.data});
  final EarnModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: data.color, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(203, 255, 208, 208),
            radius: 20,
            child: Text(
              data.title.split('').first,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          const SpaceV(15),
          Text(
            data.title,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Text(
            data.money,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
