import 'dart:math';

import 'package:flutter/material.dart';

class MagicEightBall {
  List<String> magicEightBallResponses = [
    "Yes, definitely",
    "It is certain",
    "Without a doubt",
    "Yes, definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy, try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
  ];

  Random random = Random();

  String getRandomResponse() {
    return magicEightBallResponses[
        random.nextInt(magicEightBallResponses.length)];
  }
}

class PredictorPage extends StatefulWidget {
  const PredictorPage({super.key});

  @override
  State<PredictorPage> createState() => _PredictorPageState();
}

class _PredictorPageState extends State<PredictorPage> {
  // Magic eight ball responses courtesy of ChatGPT

  MagicEightBall magicEightBall = MagicEightBall();
  String currentResponse = "";

  @override
  void initState() {
    super.initState();
    currentResponse = magicEightBall.getRandomResponse();
    print(currentResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Call Me... Maybe?")],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    currentResponse = magicEightBall.getRandomResponse();
                  });
                },
                child: const Text("Ask a question... tap for the answer."))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(currentResponse)],
        ),
      ],
    );
  }
}
