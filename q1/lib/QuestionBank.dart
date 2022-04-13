import 'package:q1/Question.dart';

class QuestionBank {
  int _questionNo = 0;

  final List<Question> questionList = [
    Question("1 + 1 = 2", true),
    Question("Apple is a vegetable", false),
    Question("Sun is smaller than moon", false),
    Question("Lahore is Capital of Pakistan", false),
    Question("Computer understands Binary language", true),
    Question("All human are mortals", true),
    Question("Isaac Newton Developed the Theory of General Relativity", false),
    Question("Physics is a branch of science", true),
    Question("Atoms are smaller than Molecules", true),
    Question("Iron is not a metal", false),
  ];
  void NextQuestion() {
    if (_questionNo <= questionList.length - 1) {
      _questionNo++;
    }
  }

  String GetQuestion() {
    return questionList[_questionNo].question;
  }

  bool GetAnswer() {
    return questionList[_questionNo].answer;
  }

  void reset() {
    _questionNo = 0;
  }

  bool IsFinished() {
    if (_questionNo <= questionList.length - 1) {
      return false;
    } else {
      return true;
    }
  }
}
