import 'package:fintech_app/core/utils/helper/data_lists.dart';
import 'package:fintech_app/core/widgets/space.dart';
import 'package:fintech_app/features/wallet/presentation/view%20model/wallet%20cubit/wallet_cubit.dart';
import 'package:fintech_app/features/wallet/presentation/view%20model/wallet%20cubit/wallet_state.dart';
import 'package:fintech_app/features/wallet/presentation/views/widgets/add_wallet_card.dart';
import 'package:fintech_app/features/wallet/presentation/views/widgets/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletListView extends StatelessWidget {
  const WalletListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WalletCubit(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const AddWalletCard(),
            const SpaceH(10),
            BlocBuilder<WalletCubit, WalletState>(
              builder: (context, state) {
                return Expanded(
                  child: SizedBox(
                    height: 190,
                    child: ListView.builder(
                      itemCount: DataLists.walletList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return WalletCard(
                          myWallet: DataLists.walletList[index],
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
