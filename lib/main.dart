import 'package:fintech_app/core/navigate%20cubit/navigate_cubit.dart';
import 'package:fintech_app/core/view/all_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const FintechApp());
}

class FintechApp extends StatelessWidget {
  const FintechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigateCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AllViews(),
      ),
    );
  }
}
