import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: [
          CenteredRow(children: [SizedBox(width: 150, height: 150, child: Placeholder())],),
          CenteredRow(children: [Text("Name")],),
          CenteredRow(children: [Text("Title")]),
          CenteredRow(children: [Text("Phone Number")]),
          CenteredRow(children: [Text("Github"), SizedBox(width: 10.0), Text("Email")]),
        ],
      ),
    );
  }
}