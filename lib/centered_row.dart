import 'package:flutter/material.dart';

class CenteredRow extends StatelessWidget {

  final List<Widget> children;
  final double padding;

  const CenteredRow({super.key, required this.children, this.padding = 10.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
