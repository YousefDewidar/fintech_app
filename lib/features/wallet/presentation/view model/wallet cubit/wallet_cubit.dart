import 'package:fintech_app/core/utils/helper/data_lists.dart';
import 'package:fintech_app/features/wallet/data/model/wallet.dart';
import 'package:fintech_app/features/wallet/presentation/view%20model/wallet%20cubit/wallet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletCubit extends Cubit<WalletState> {
  WalletCubit() : super(InitState());

  void addWallet() {
    DataLists.walletList.insert(
        0,
        Wallet(
            money: 'money',
            clientName: 'clientName',
            color: const Color.fromARGB(255, 229, 82, 255)));
    emit(DoneState());
  }
}
