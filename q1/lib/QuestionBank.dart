import 'package:q1/Question.dart';

class QuestionBank {
  int _questionNo = 0;

  final List<Question> questionList = [
    Question("Just a check question \n 1 + 1 = 2", true),
    Question("Q2", false),
    Question("Q3", false),
    Question("Q4", false),
    Question("Q5", true),
    Question("Q6", true),
    Question("Q7", false),
    Question("Q8", true),
    Question("Q9", true),
    Question("Q10", false),
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
