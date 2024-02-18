import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';
import 'package:professional_profile_app/models/magic_eight_ball.dart';

class MagicEightBallWidgetState extends StatefulWidget {
  const MagicEightBallWidgetState({super.key});

  @override
  State<MagicEightBallWidgetState> createState() =>
      _MagicEightBallWidgetStateState();
}

class _MagicEightBallWidgetStateState
    extends State<MagicEightBallWidgetState> {

  MagicEightBall magicEightBall = MagicEightBall();
  String currentResponse = "";

  @override
  void initState() {
    super.initState();
    currentResponse = magicEightBall.getRandomResponse();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CenteredRow(
          children: [Text("Call Me... Maybe?")],
        ),
        CenteredRow(
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
        CenteredRow(
          children: [Text(currentResponse)],
        ),
      ],
    );
  }
}
