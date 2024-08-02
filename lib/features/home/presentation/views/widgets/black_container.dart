import 'package:fintech_app/core/utils/constant.dart';
import 'package:fintech_app/features/home/presentation/views/widgets/colors_decore_credit.dart';
import 'package:flutter/material.dart';

class BlackContainer extends StatelessWidget {
  const BlackContainer({super.key, required this.contentWidget, required this.height});
  final Widget contentWidget;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: kBlackCol,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          contentWidget,
          const ColorsDecoreCredit(),
        ],
      ),
    );
  }
}
