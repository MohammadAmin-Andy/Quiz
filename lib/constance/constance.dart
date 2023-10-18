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
  secondQuestions.correctAnswer = 1;

  var thirdQuestions = Questions();
  thirdQuestions.titleQuestions =
      'Which part of this link called "domain"?\n\n"HTTP://WWW.Websitename.com/help"\n';
  thirdQuestions.imageNum = '3';
  thirdQuestions.allAnswers = [
    'Websitename.com ',
    'HTTP',
    'Help.htm',
    'www',
  ];
  thirdQuestions.correctAnswer = 0;

  var forthQuestions = Questions();
  forthQuestions.titleQuestions =
      'Which option refers to native programming languages?';
  forthQuestions.imageNum = '4';
  forthQuestions.allAnswers = [
    'Dart',
    'Java',
    'KOtlin',
    '2 and 3',
  ];
  forthQuestions.correctAnswer = 3;

  var fifthQuesrions = Questions();
  fifthQuesrions.titleQuestions =
      'Number 2 belongs to which one of the following categories?';
  fifthQuesrions.imageNum = '5';
  fifthQuesrions.allAnswers = [
    'String',
    'int',
    'bool',
    'float',
  ];
  fifthQuesrions.correctAnswer = 1;

  return [
    firstQuestions,
    secondQuestions,
    thirdQuestions,
    forthQuestions,
    fifthQuesrions,
  ];
}
