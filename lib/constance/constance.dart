import 'package:quiz/data/questions.dart';

List<Questions> getQuestionsList() {
  var firstQuestions = Questions();
  firstQuestions.titleQuestions =
      'ٌWhich programming language in older than the other one?';
  firstQuestions.imageNum = '1';
  firstQuestions.allAnswers = [
    'python',
    'C++',
    'C',
    'C#',
  ];
  firstQuestions.correctAnswer = 2;

  var secondQuestions = Questions();
  secondQuestions.titleQuestions =
      'Which one is the oldest country in the world?';
  secondQuestions.imageNum = '2';
  secondQuestions.allAnswers = [
    'Turkye',
    ' Iran',
    'USA',
    'Uk',
  ];

  var thirdQuestions = Questions();
  thirdQuestions.titleQuestions =
      'Which part of this link caبlled "domain"?\n\n"HTTP://WWW.Websitename.com/help.com.htm"\n';
  thirdQuestions.imageNum = '3';
  thirdQuestions.allAnswers = [
    'Websitename.com ',
    'HTTP',
    'Help.htm',
    'www',
  ];
  thirdQuestions.correctAnswer = 0;

  return [firstQuestions, secondQuestions, thirdQuestions];
}
