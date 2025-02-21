import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(160, 252, 251, 251),
          ),
          const SizedBox(height: 40),
          const Text(
            'Learn Flutter the Fun Way!',
            style: TextStyle(
                color: Color.fromARGB(255, 182, 225, 239), 
                fontSize: 18),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 162, 212, 231),
              ),
              icon: const Icon(Icons.arrow_right_alt_outlined),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
