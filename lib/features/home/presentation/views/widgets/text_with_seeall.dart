import 'package:flutter/material.dart';

class TextWithSeeAll extends StatelessWidget {
  const TextWithSeeAll({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 22,
              color: Color(0xE0000000),
              fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text('See All', style: TextStyle(color: Color(0xFF02599F))),
        )
      ],
    );
  }
}