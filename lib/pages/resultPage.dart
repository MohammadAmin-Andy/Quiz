import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key, this.correctAnswer = 0}) : super(key: key);

  int correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
        backgroundColor: Colors.red[600],
        centerTitle: true,
        title: Text(
          'Result Page',
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
                  image: AssetImage('images/Success.jpg'),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Your correct answers!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '$correctAnswer',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
