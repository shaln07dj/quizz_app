import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQiuz, {super.key});

  final void Function() startQiuz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 80),
          // Opacity(
          //   opacity: 0.4,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          Image.asset('assets/images/quiz-logo.png',
              width: 300, color: const Color.fromARGB(113, 248, 248, 248)),

          const SizedBox(height: 80),
          const Text(
            "Let's See..!",
            style: TextStyle(
              color: Color.fromARGB(255, 218, 238, 245),
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
              onPressed: startQiuz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
