import 'package:app/global_widgets/global_widget.dart';
import 'package:app/presentation/home/c/c_screen.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quiz App',
          style: MyTextStyle.changaVariableFont
              .copyWith(fontSize: 25.sp, color: MyColors.white),
        ),
        backgroundColor: MyColors.black,
      ),
      backgroundColor: MyColors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyWidgetButton(
                onTap: () {
                  setState(() {
                    print('C++');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => CScreen(),
                      ),
                    );
                  });
                },
                exampleName: 'C++',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Dart',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Flutter',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Java',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Ruby',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Python',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'C',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Go',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'React JS',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Node JS',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Java Script',
                questionText: '10 of the questions'),
            MyWidgetButton(
                onTap: () {
                  print('object');
                },
                exampleName: 'Php',
                questionText: '10 of the questions'),
          ],
        ),
      ),
    );
  }
}
