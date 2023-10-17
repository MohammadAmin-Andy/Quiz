import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
        backgroundColor: Colors.lightBlue[100],
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
                  image: AssetImage('images/1.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'question',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: Text('پاسخ اول',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.end),
              ),
              ListTile(
                title: Text('پاسخ دوم',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.end),
              ),
              ListTile(
                title: Text('پاسخ سوم',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.end),
              ),
              ListTile(
                title: Text('پاسخ چهارم',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.end),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
