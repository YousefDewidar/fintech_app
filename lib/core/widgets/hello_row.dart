import 'package:fintech_app/core/widgets/space.dart';
import 'package:flutter/material.dart';

class HelloRow extends StatelessWidget {
  const HelloRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 20,
          // // backgroundImage: AssetImage(),
          backgroundColor: Colors.amber,
        ),
    
        const SpaceH(10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning!', style: TextStyle(fontSize: 15)),
            Text(
              'Client Name',
              style: TextStyle(
                  fontSize: 21,
                  color: Color(0xE0000000),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_none))
      ],
    );
  }
}
