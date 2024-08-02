import 'package:fintech_app/core/utils/constant.dart';
import 'package:fintech_app/features/home/presentation/views/home_view.dart';
import 'package:fintech_app/features/wallet/presentation/views/wallet_view.dart';
import 'package:flutter/material.dart';

class AllViews extends StatefulWidget {
  const AllViews({super.key});

  @override
  State<AllViews> createState() => _AllViewsState();
}

class _AllViewsState extends State<AllViews> {
  PageController pageCon = PageController();
  int curInd = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: SafeArea(
          child: PageView(
            controller: pageCon,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value) {
              curInd = value;
              setState(() {});
            },
            children: const [
              HomeView(),
              WalletView(),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: curInd,
          height: MediaQuery.of(context).size.height * .08,
          onDestinationSelected: (value) {
            curInd = value;
            pageCon.jumpToPage(curInd);
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.account_balance_wallet_outlined),
                label: 'Wallet'),
            NavigationDestination(
                icon: Icon(Icons.insert_chart_outlined_outlined),
                label: 'transaction'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ));
  }
}
