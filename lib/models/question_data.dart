class QuestionData {
  QuestionData({
    required this.questionText, //Savollar
    required this.trueAnswer, //To'g'ri Javob
    required this.variant1, //A
    required this.variant2, //B
    required this.variant3, //C
    required this.variant4, //D
  });

  final String questionText;
  final String variant1;
  final String variant2;
  final String variant3;
  final String variant4;
  final int trueAnswer;
}
