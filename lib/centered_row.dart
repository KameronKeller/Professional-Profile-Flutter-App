import 'package:flutter/material.dart';

class CenteredRow extends StatelessWidget {

  final List<Widget> children;
  final double padding;
  final MainAxisAlignment mainAxisAlignment;

  const CenteredRow({super.key, required this.children, this.padding = 5.0, this.mainAxisAlignment = MainAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: children,
      ),
    );
  }
}
