import 'package:fintech_app/core/navigate%20cubit/navigate_cubit.dart';
import 'package:fintech_app/core/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalBalanceContent extends StatelessWidget {
  const TotalBalanceContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Total Balance',
            style: TextStyle(fontSize: 18, color: Colors.white)),
        const Text('\$25,000.40',
            style: TextStyle(
                height: 1.2,
                letterSpacing: 1.5,
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        const SpaceV(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('My Wallet',
                style: TextStyle(fontSize: 16, color: Colors.white)),
            const SpaceH(7),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                BlocProvider.of<NavigateCubit>(context).navigateTo(1);
              },
              icon: const Icon(
                Icons.arrow_circle_right,
                color: Colors.white,
                size: 42,
              ),
            ),
          ],
        )
      ],
    );
  }
}
