import 'package:fintech_app/features/home/presentation/views/widgets/earn_card.dart';
import 'package:flutter/material.dart';

class EarnListView extends StatelessWidget {
  const EarnListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const EarnCard();
          },
        ));
  }
}
