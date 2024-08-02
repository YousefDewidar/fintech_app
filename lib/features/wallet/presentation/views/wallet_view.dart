import 'package:fintech_app/features/wallet/presentation/views/widgets/wallet_view_body.dart';
import 'package:flutter/material.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(child: WalletViewBody());
  }
}
