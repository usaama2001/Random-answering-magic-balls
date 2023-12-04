import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Ask Me Anything You want',
          style: TextStyle(fontSize: 32.0),
        ),
        backgroundColor: Colors.indigo[600],
      ),
      body: Questions(),
    ),
  ));
}

class Questions extends StatefulWidget {
  const Questions({super.key});
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int answer = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            answer = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$answer.png'),
      ),
    );
  }
}
