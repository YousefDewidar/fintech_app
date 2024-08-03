import 'package:fintech_app/core/navigate%20cubit/navigate_cubit.dart';
import 'package:fintech_app/core/navigate%20cubit/navigate_state.dart';
import 'package:fintech_app/core/utils/constant.dart';
import 'package:fintech_app/features/home/presentation/views/home_view.dart';
import 'package:fintech_app/features/wallet/presentation/views/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllViews extends StatelessWidget {
  const AllViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigateCubit, NavigateState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor: kBackgroundColor,
            body: SafeArea(
                child: IndexedStack(
              index: BlocProvider.of<NavigateCubit>(context).curInd,
              children: const [HomeView(), WalletView()],
            )),

            // ==========================
            bottomNavigationBar: NavigationBar(
              backgroundColor: Colors.white,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              selectedIndex: BlocProvider.of<NavigateCubit>(context).curInd,
              height: MediaQuery.of(context).size.height * .08,
              onDestinationSelected: (value) {
                BlocProvider.of<NavigateCubit>(context).navigateTo(value);
              },
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: 'Wallet'),
                NavigationDestination(
                    icon: Icon(Icons.insert_chart_outlined_outlined),
                    label: 'transaction'),
                NavigationDestination(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
            ));
      },
    );
  }
}
