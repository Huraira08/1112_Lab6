import 'package:flutter/material.dart';
import 'package:q1/Question.dart';
import 'package:q1/QuestionBank.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  QuestionBank qb = new QuestionBank();
  int score = 0;
  List<Widget> scorekeeper = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 100,
              ),
              Container(
                child: Text(
                  qb.GetQuestion(),
                  style: TextStyle(
                      color: Colors.white70,
                      //fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
              ),
              SizedBox(
                height: 35,
                width: 200,
                child: FlatButton(
                  onPressed: () {
                    if (qb.GetAnswer() == true) {
                      score++;
                      setState(() {
                        scorekeeper.add(Icon(Icons.check, color: Colors.green));
                      });
                    } else {
                      setState(() {
                        scorekeeper.add(Icon(Icons.close, color: Colors.red));
                      });
                    }
                    setState(() {
                      qb.NextQuestion();
                    });
                    if (qb.IsFinished()) {
                      qb.reset();
                      setState(() {
                        score = 0;
                        scorekeeper = [];
                      });
                    }
                  },
                  color: Colors.green,
                  shape: StadiumBorder(),
                  child: Text(
                    "True",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 35,
                width: 200,
                child: FlatButton(
                  onPressed: () {
                    if (qb.GetAnswer() == false) {
                      score++;
                      setState(() {
                        scorekeeper.add(Icon(Icons.check, color: Colors.green));
                      });
                    } else {
                      setState(() {
                        scorekeeper.add(Icon(Icons.close, color: Colors.red));
                      });
                    }
                    setState(() {
                      qb.NextQuestion();
                    });
                    if (qb.IsFinished()) {
                      qb.reset();
                      setState(() {
                        score = 0;
                        scorekeeper = [];
                      });
                    }
                  },
                  //shape: StadiumBorder(),
                  // color: Colors.white,
                  // textColor: Colors.white,
                  color: Colors.green,
                  shape: StadiumBorder(),
                  child: Text(
                    "False",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: scorekeeper,
              )
            ],
          ),
        ),
      ),
    );
  }
}
