import 'package:fintech_app/core/widgets/space.dart';
import 'package:fintech_app/features/wallet/data/model/wallet.dart';
import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    super.key,
    required this.myWallet,
  });
  final Wallet myWallet;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 190,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: myWallet.color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TotalMoney(myWallet: myWallet),
            const AcountNum(),
            const Spacer(),
            ClientInfo(myWallet: myWallet),
          ],
        ),
      ),
    );
  }
}

class TotalMoney extends StatelessWidget {
  const TotalMoney({
    super.key,
    required this.myWallet,
  });
  final Wallet myWallet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Total Balance',
                  style: TextStyle(fontSize: 17, color: Colors.black)),
              Text('\$${myWallet.money}',
                  style: const TextStyle(
                      height: 1.2,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ],
          ),
          const SpaceH(28),
          Image.asset('assets/visa-512.png', width: 80, height: 37),
        ],
      ),
    );
  }
}

class AcountNum extends StatelessWidget {
  const AcountNum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('1234  ****  ****  3456',
          style: TextStyle(fontSize: 17, color: Colors.black)),
    );
  }
}

class ClientInfo extends StatelessWidget {
  const ClientInfo({
    super.key,
    required this.myWallet,
  });
  final Wallet myWallet;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      height: 60,
      width: 290,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)),
          color: Colors.black),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Name',
                  style: TextStyle(fontSize: 16, color: Color(0xFFC2C1C1))),
              Text('Exp',
                  style: TextStyle(fontSize: 16, color: Color(0xFFC2C1C1))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(myWallet.clientName,
                  style: const TextStyle(fontSize: 18, color: Colors.white)),
              const Text('09/23',
                  style: TextStyle(fontSize: 17, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
