import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    ////this (<>) here signifies the type of list
    var questions = <String>[
      "What's you favourite colour?",
      "What's you favourite animal?"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizer.io"),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen"),
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answer 3 chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
