import 'package:fintech_app/core/widgets/space.dart';
import 'package:flutter/material.dart';

class EarnCard extends StatelessWidget {
  const EarnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(16)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(203, 255, 208, 208),
            radius: 20,
            child: Text(
              "U",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          SpaceV(15),
          Text(
            "Upwork",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Text(
            "\$ 3,000",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
