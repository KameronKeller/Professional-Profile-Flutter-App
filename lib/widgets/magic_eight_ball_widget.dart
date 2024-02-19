import 'package:flutter/material.dart';
import 'package:professional_profile_app/widgets/centered_row.dart';
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
        CenteredRow(
          children: [Text("Call Me... Maybe?",
           style: Theme.of(context).textTheme.headlineLarge
          )],
        ),
        CenteredRow(
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    currentResponse = magicEightBall.getRandomResponse();
                  });
                },
                child: Text("Ask a question... tap for the answer.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  )
                ),
          ],
        ),
        CenteredRow(
          children: [Text(currentResponse,
          style: Theme.of(context).textTheme.headlineMedium,
          )],
        ),
      ],
    );
  }
}
