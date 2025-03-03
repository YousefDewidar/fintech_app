import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  final String cardName;
  final IconData? iconPre;
  final IconData? iconSuf;

  final void Function() onTap;
  const SettingCard({
    super.key,
    required this.cardName,
    this.iconPre,
    this.iconSuf,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 70,
        child: Card(
          color: Colors.white,
          margin: const EdgeInsets.only(top: 10),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(iconPre,color: Colors.deepOrangeAccent),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  cardName,
                  style: const TextStyle(fontSize: 16),
                ),
                const Spacer(),
                Icon(
                  color: Colors.blueAccent,
                  iconSuf,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
