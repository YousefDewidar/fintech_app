import 'package:fintech_app/core/widgets/space.dart';
import 'package:fintech_app/features/wallet/presentation/views/widgets/add_wallet_card.dart';
import 'package:fintech_app/features/wallet/presentation/views/widgets/wallet_card.dart';
import 'package:flutter/material.dart';

class WalletListView extends StatelessWidget {
  const WalletListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const AddWalletCard(),
          const SpaceH(10),
          Expanded(
            child: SizedBox(
                height: 190,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const WalletCard();
                  },
                )),
          ),
        ],
      ),
    );
  }
}
