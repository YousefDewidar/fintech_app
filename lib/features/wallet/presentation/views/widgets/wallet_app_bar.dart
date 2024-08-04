import 'package:fintech_app/core/widgets/space.dart';
import 'package:flutter/material.dart';

class WalletAppBar extends StatelessWidget {
  const WalletAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 20,
          backgroundColor: Colors.amber,
        ),
        const SpaceH(70),
        const Text(
          'Wallet',
          style: TextStyle(
              fontSize: 21,
              color: Color(0xE0000000),
              fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
