
import 'package:flutter/material.dart';

class ColorsDecoreCredit extends StatelessWidget {
  const ColorsDecoreCredit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -200,
            right: -40,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 100,
                    spreadRadius: 5,
                    color: Colors.yellow.withOpacity(.7),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: -40,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 100,
                    spreadRadius: 5,
                    color: Colors.blue.withOpacity(.7),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
