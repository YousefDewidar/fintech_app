import 'package:fintech_app/features/home/presentation/views/widgets/trans_list_view.dart';
import 'package:flutter/material.dart';

class WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // WalletListView(),
        TransactionTitle(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TransactionListView(),
        ),
      ],
    );
  }
}

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 23.0, right: 20, left: 20,bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Transactions',
            style: TextStyle(
                fontSize: 22,
                color: Color(0xE0000000),
                fontWeight: FontWeight.w500),
          ),
          Icon(Icons.currency_exchange_rounded)
        ],
      ),
    );
  }
}
