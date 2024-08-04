import 'package:flutter/material.dart';

class InfoProf extends StatelessWidget {
  const InfoProf({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.amberAccent,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Your Name',
            style: TextStyle(fontSize: 20),
          ),
        
        ],
      ),
    );
  }
}
