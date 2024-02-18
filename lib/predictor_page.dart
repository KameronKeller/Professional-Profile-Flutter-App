import 'package:flutter/material.dart';

class PredictorPage extends StatelessWidget {
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
  const PredictorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [Text("Caption")],),
        Row(children: [Text("Button")],),
        Row(children: [Text("Answer")],),
      ],
    );
  }
}