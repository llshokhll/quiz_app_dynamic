import 'package:app/global_widgets/question_item.dart';
import 'package:app/global_widgets/variant_item.dart';
import 'package:app/models/question_data.dart';
import 'package:app/presentation/home/home_screen.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:app/utils/widget/fake_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CScreen extends StatefulWidget {
  const CScreen({super.key});

  @override
  State<CScreen> createState() => _CScreenState();
}

class _CScreenState extends State<CScreen> {
  List<QuestionData> questionData = FakeDataC.getMyQuestions();
  int currentQuestionIndex = 0;
  int variantIndex = 0;
  List<int> selectedValues = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.black,
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen(),
                ),
              );
            });
          },
          icon: const Icon(
            Icons.arrow_back,
            color: MyColors.white,
          ),
        ),
        title: Text(
          'Back',
          style: MyTextStyle.changaVariableFont
              .copyWith(color: MyColors.white, fontSize: 20.sp),
        ),
        centerTitle: false,
      ),
      backgroundColor: MyColors.black,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  QuestionItem(
                      questionIndex: currentQuestionIndex,
                      questionText:
                          questionData[currentQuestionIndex].questionText),
                  VariantItem(
                      isSelected: variantIndex == 1,
                      variantText: questionData[currentQuestionIndex].variant1,
                      onTap: () {
                        setState(() {
                          variantIndex = 1;
                        });
                      }),
                  VariantItem(
                      isSelected: variantIndex == 2,
                      variantText: questionData[currentQuestionIndex].variant2,
                      onTap: () {
                        setState(() {
                          variantIndex = 2;
                        });
                      }),
                  VariantItem(
                      isSelected: variantIndex == 3,
                      variantText: questionData[currentQuestionIndex].variant3,
                      onTap: () {
                        setState(() {
                          variantIndex = 3;
                        });
                      }),
                  VariantItem(
                      isSelected: variantIndex == 4,
                      variantText: questionData[currentQuestionIndex].variant4,
                      onTap: () {
                        setState(() {
                          variantIndex = 4;
                        });
                      }),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 70.r),
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (variantIndex == 0) {
                    FakeDataC.getMyToast(context,
                        message: "Javob variantini tanlang");
                  } else {
                    if (currentQuestionIndex < 2) {
                      currentQuestionIndex++;
                      selectedValues.add(variantIndex);
                      print(selectedValues);
                      variantIndex = 0;
                    } else {
                      selectedValues.add(variantIndex);
                      FakeDataC.getMyToast(context,
                          message:
                              "Savollar tugadi, To'g'ri javoblar soni : ${getTrueQuestionsCount(selectedIndexes: selectedValues)}");
                    }
                  }
                });
              },
              child: SizedBox(
                height: 40.h,
                child: Center(
                  child: Text(
                    "NEXT",
                    style: MyTextStyle.caprasimoRegular
                        .copyWith(fontSize: 20.sp, color: MyColors.black),
                  ),
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: MyColors.deepPurple, elevation: 5),
            ),
          ), //NEXT BUTTON
        ],
      ),
    );
  }
}

int getTrueQuestionsCount({required List<int> selectedIndexes}) {
  var questions = FakeDataC.getMyQuestions();
  int trueCount = 0;
  for (int i = 0; i < 3; i++) {
    if (questions[i].trueAnswer == selectedIndexes[i]) trueCount++;
  }
  return trueCount;
}
