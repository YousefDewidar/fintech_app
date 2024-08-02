import 'package:fintech_app/features/home/presentation/views/widgets/trans_card.dart';
import 'package:flutter/material.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
    return const TransactionCard();
          },
        );
  }
}
