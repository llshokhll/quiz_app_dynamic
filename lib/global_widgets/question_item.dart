import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem(
      {Key? key, required this.questionIndex, required this.questionText})
      : super(key: key);

  final int questionIndex;
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: MyColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Question : ${questionIndex + 1}",
            style: MyTextStyle.caprasimoRegular.copyWith(
              fontSize: 18.sp,
              color: MyColors.black,
            ),
          ), //QUESTION INDEX
          SizedBox(
            height: 10.h,
          ),
          Text(
            questionText,
            style: MyTextStyle.caprasimoRegular.copyWith(
              fontSize: 15.sp,
              color: MyColors.black,
            ),
          ), //QUESTIONS
        ],
      ),
    );
  }
}
