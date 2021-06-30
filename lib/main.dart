import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "T\'as combien de jouets ?",
      "Quel est ta couleur préférée ?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]),
            RaisedButton(child: Text('Réponse 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Réponse 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Réponse 3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
