import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/icons/icons.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidgetButton extends StatelessWidget {
  const MyWidgetButton({
    super.key,
    required this.onTap,
    required this.exampleName,
    required this.questionText,
  });

  final VoidCallback onTap;
  final String exampleName;
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, //OnTap
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: MyColors.purple,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50.w,
              height: 50.h,
              child: Image.asset(
                MyIcons.book,
              ),
            ), //IMG
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  exampleName,
                  style: MyTextStyle.playwriteThin.copyWith(
                    fontSize: 20.sp,
                    color: MyColors.white,
                  ),
                ), //NAME
                Text(
                  questionText,
                  style: MyTextStyle.changaVariableFont
                      .copyWith(fontSize: 15.sp, color: MyColors.white),
                ), //Questions?
              ],
            ),
          ],
        ),
      ),
    );
  }
}
