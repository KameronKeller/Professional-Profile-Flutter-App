import 'package:flutter/material.dart';

class PredictorPage extends StatelessWidget {
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