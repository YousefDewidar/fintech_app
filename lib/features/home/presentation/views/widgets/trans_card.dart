import 'package:fintech_app/core/widgets/space.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(bottom: 10),
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color.fromARGB(104, 255, 255, 0),
            child: Icon(Icons.laptop),
          ),
          SpaceH(1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adobe Illustrator',
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(232, 0, 0, 0),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Subcription fee',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey
                ),
              ),
            ],
          ),
          SpaceH(5),
          Text(
            '-\$32.00',
            style: TextStyle(
                fontSize: 21,
                color: Colors.redAccent,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
