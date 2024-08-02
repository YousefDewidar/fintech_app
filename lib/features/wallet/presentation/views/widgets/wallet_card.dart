import 'package:fintech_app/core/widgets/space.dart';
import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 190,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TotalMoney(),
            AcountNum(),
            Spacer(),
            ClientInfo(),
          ],
        ),
      ),
    );
  }
}

class TotalMoney extends StatelessWidget {
  const TotalMoney({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Balance',
                  style: TextStyle(fontSize: 17, color: Colors.black)),
              Text('\$25,000.40',
                  style: TextStyle(
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
  });

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
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
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
              Text('Client Name',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              Text('09/23',
                  style: TextStyle(fontSize: 17, color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
