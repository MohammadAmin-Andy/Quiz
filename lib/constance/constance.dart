import 'package:quiz/data/questions.dart';

List<Questions> getQuestionsList() {
  var firstQuestions = Questions();
  firstQuestions.titleQuestions = 'قدمت کدام زبان برنامه نویسی بیشتر است؟';
  firstQuestions.imageNum = '1';
  firstQuestions.allAnswers = [
    'python',
    'C++',
    'C',
    'C#',
  ];
  firstQuestions.correctAnswer = 2;
  return [firstQuestions];
}
