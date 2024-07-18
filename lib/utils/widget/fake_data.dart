import 'package:app/models/question_data.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FakeDataC {
  static List<QuestionData> getMyQuestions() {
    List<QuestionData> questionData = [];

    questionData.add(
      QuestionData(
        questionText: 'Butun sonlarni qabul qiluvchi turni tanlang?',
        trueAnswer: 3,
        variant1: "A) Double()",
        variant2: "B) String()",
        variant3: "C) Int()",
        variant4: "D) Bool()",
      ),
    );
    questionData.add(
      QuestionData(
        questionText: 'Ummumiy sonlarni qabul qiluvchi turni tanlang?',
        trueAnswer: 2,
        variant1: "A) String()",
        variant2: "B) Double()",
        variant3: "C) Int()",
        variant4: "D) Bool()",
      ),
    );
    questionData.add(
      QuestionData(
        questionText: 'Matnlarni qabul qiluvchi turni tanlang?',
        trueAnswer: 4,
        variant1: "A) Double()",
        variant2: "B) Bool()",
        variant3: "C) Int()",
        variant4: "D) String()",
      ),
    );
    return questionData;
  }

  static getMyToast(BuildContext context, {required String message}) =>
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: MyColors.white,
        textColor: MyColors.black,
        fontSize: 14.0.sp,
      );
}
