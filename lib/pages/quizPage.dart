import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/pages/resultPage.dart';
import '../constance/constance.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int showQuestionIndex = 0;
  Questions? selectedQuestions;
  bool state = false;
  int correctAnswers = 0;

  @override
  Widget build(BuildContext context) {
    selectedQuestions = getQuestionsList()[showQuestionIndex];
    var showImageIndex = selectedQuestions!.imageNum;

    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
        backgroundColor: Colors.lightBlue[300],
        centerTitle: true,
        title: Text(
          '${showQuestionIndex + 1} out of ${getQuestionsList().length}',
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
                '${selectedQuestions!.titleQuestions}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...List.generate(
                4,
                (index) => _getOptionsItem(index),
              ),
              SizedBox(height: 20),
              if (state)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[600],
                    minimumSize: Size(180, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ResultPage(
                          correctAnswer: correctAnswers,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Final Result',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getOptionsItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestions!.allAnswers![index],
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {
        if (selectedQuestions!.correctAnswer == index) {
          correctAnswers++;
          print('doroste');
        } //else {print('ghalate');}
        setState(() {
          if (showQuestionIndex < getQuestionsList().length - 1) {
            showQuestionIndex++;
          } else {
            state = true;
          }
        });
      },
    );
  }
}
