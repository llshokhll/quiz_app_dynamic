import 'package:app/presentation/auth/auth_screen.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/icons/icons.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _init();
    super.initState();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return const AuthScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blueC1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(flex: 2, child: SizedBox()),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WELCOME TO',
                    style: MyTextStyle.meriendaVariableFont.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w900,
                        color: MyColors.orange),
                  ),
                  Text(
                    'Quiz App',
                    style: MyTextStyle.meriendaVariableFont.copyWith(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w900,
                        color: MyColors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 3, child: Lottie.asset(MyIcons.loading, width: 180.w)),
          ],
        ),
      ),
    );
  }
}
