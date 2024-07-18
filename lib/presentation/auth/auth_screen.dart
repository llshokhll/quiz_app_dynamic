import 'package:app/presentation/auth/login/login_screen.dart';
import 'package:app/presentation/auth/register/register_screen.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/icons/icons.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: 140.w,
                height: 140.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.r),
                  child: Image.asset(
                    MyIcons.person,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 25.w),
            width: double.infinity,
            height: 450.h,
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  80.r,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'AUTH',
                    style: MyTextStyle.changaVariableFont.copyWith(
                      fontSize: 40.sp,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            print('Log In');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LoginScreen(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70.h,
                          decoration: BoxDecoration(
                            color: MyColors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.r),
                              bottomRight: Radius.circular(60.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Log In',
                              style: MyTextStyle.meriendaVariableFont.copyWith(
                                fontSize: 20.sp,
                                color: MyColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            print('Sign In');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterScreen(),
                              ),
                            );
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70.h,
                          decoration: BoxDecoration(
                            color: MyColors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60.r),
                              bottomRight: Radius.circular(60.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: MyTextStyle.meriendaVariableFont.copyWith(
                                fontSize: 20.sp,
                                color: MyColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
