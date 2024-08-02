import 'package:fintech_app/core/widgets/space.dart';
import 'package:flutter/material.dart';

class InComeWidget extends StatelessWidget {
  const InComeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SpaceH(5),
        Icon(Icons.arrow_downward_rounded, color: Colors.green, size: 40),
        SpaceH(7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Income', style: TextStyle(fontSize: 13, color: Colors.white)),
            Text(
              '\$ 25,000',
              style: TextStyle(
                  height: 1.2,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ],
        ),
        SpaceH(7),
        SizedBox(
            height: 40,
            width: 30,
            child:
                VerticalDivider(color: Colors.white, thickness: 2, width: 5)),
        Icon(Icons.arrow_upward_rounded, color: Colors.red, size: 40),
        SpaceH(7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Outcome',
                style: TextStyle(fontSize: 13, color: Colors.white)),
            Text(
              '\$ 17,000',
              style: TextStyle(
                  height: 1.2,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}