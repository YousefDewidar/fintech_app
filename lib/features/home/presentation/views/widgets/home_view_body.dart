import 'package:fintech_app/core/widgets/hello_row.dart';
import 'package:fintech_app/core/widgets/space.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/black_container.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/earn_list_view.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/income_container.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/text_with_seeall.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/total_content.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/trans_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HelloRow(),
        SpaceV(16),
        BlackContainer(height: 160, contentWidget: TotalBalanceContent()),
        SpaceV(14),
        BlackContainer(height: 80, contentWidget: InComeWidget()),
        SpaceV(12),
        TextWithSeeAll(text: "Earnings"),
        SpaceV(12),
        EarnListView(),
        SpaceV(12),
        TextWithSeeAll(text: "Transaction"),
        SpaceV(12),
        TransactionListView(),
      ],
    );
  }
}
