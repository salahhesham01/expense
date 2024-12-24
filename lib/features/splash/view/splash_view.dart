import 'package:expense/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/functions/navigate.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    delayNavigate(context, "/expenseList");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Expense Tracker",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 30,
              fontFamily: "Poppins",
              color: AppColors.forestGreen),
        ),
      ),
    );
  }
}

void delayNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
