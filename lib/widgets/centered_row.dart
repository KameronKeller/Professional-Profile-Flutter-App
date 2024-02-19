import 'package:flutter/material.dart';

class CenteredRow extends StatelessWidget {
  final List<Widget> children;
  final double padding;
  final MainAxisAlignment mainAxisAlignment;

  const CenteredRow(
      {super.key,
      required this.children,
      this.padding = 0.0,
      this.mainAxisAlignment = MainAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: children,
    );
  }
}
