import 'package:app/presentation/auth/login/login_screen.dart';
import 'package:app/presentation/home/home_screen.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/icons/icons.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Lottie.asset(
                MyIcons.login,
                width: 250.w,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
              width: double.infinity,
              height: 500.h,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      'Sign In',
                      style: MyTextStyle.changaVariableFont
                          .copyWith(fontSize: 40.sp),
                    ),
                  ),
                  Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.white50),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.r),
                      child: Center(
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Full Name',
                            hintStyle:
                                MyTextStyle.meriendaVariableFont.copyWith(
                              color: MyColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.white50),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.r),
                      child: Center(
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                            hintStyle:
                                MyTextStyle.meriendaVariableFont.copyWith(
                              color: MyColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.white50),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.r),
                      child: Center(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle:
                                MyTextStyle.meriendaVariableFont.copyWith(
                              color: MyColors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        print('Sign In');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomeScreen(),
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
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Already have any account? ',
                        style: MyTextStyle.sfProBold.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginScreen(),
                              ),
                            );
                            print('Sign In Text');
                          });
                        },
                        child: Text(
                          'Log In',
                          style: MyTextStyle.sfBold800.copyWith(
                            fontSize: 12.sp,
                            color: MyColors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
