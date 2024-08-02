import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddWalletCard extends StatelessWidget {
  const AddWalletCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black,
      radius: const Radius.circular(16),
      dashPattern: const [8,0,9],
      borderType: BorderType.RRect,
      strokeWidth: 1.5,
      child: Container(
        alignment: Alignment.center,
        width:40,
        height: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: SizedBox(
          width: 25,
          height: 25,
          child: IconButton(
            padding: EdgeInsets.zero,
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black)),
          ),
        ),
      ),
    );
  }
}
