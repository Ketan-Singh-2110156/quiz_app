import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child : Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset('assets/images/quiz-logo.png',
        width: 200,
        color: const Color.fromARGB(153, 255, 255, 255),
        ),
        const SizedBox(height: 20,),
        const Text(
          'Basic Flutter quiz',
          style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          ),
        ),
        const SizedBox(height: 20,),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(
            Icons.subdirectory_arrow_right,
            color: Colors.white,
            ),
          label: const Text('Start Quiz',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ))
          ),
      ],
      ),
    );
  }
}