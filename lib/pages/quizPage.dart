import 'package:flutter/material.dart';

import '../constance/constance.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int showQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var showImageIndex = getQuestionsList()[showQuestionIndex].imageNum!;
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
        backgroundColor: Colors.lightBlue[300],
        centerTitle: true,
        title: Text(
          'questions',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Container(width: double.infinity),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage('images/$showImageIndex.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                '${getQuestionsList()[showQuestionIndex].titleQuestions}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...List.generate(
                4,
                (index) => ListTile(
                  title: Text(
                    getQuestionsList()[showQuestionIndex].allAnswers![index],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
