import 'package:fintech_app/core/utils/helper/data_lists.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/earn_card.dart';
import 'package:flutter/material.dart';

class EarnListView extends StatelessWidget {
  const EarnListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.builder(
          itemCount: DataLists.earnList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  EarnCard(data: DataLists.earnList[index],);
          },
        ));
  }
}
