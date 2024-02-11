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
          CenteredRow(children: [SizedBox(width: 200, height: 200, child: Placeholder())],),
          CenteredRow(
            children: [
              Text(
                "Mr. Anderson",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          CenteredRow(children: [
            Text(
              "Full Stack Engineer",
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ]),
          CenteredRow(children: [
            Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ]),
          CenteredRow(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text(
              "github.com/Rudxain/RGB-digital-rain",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            // SizedBox(width: 10.0),
            Text(
              "Email",
              style: TextStyle(fontSize: 18),)
          ]),
        ],
      ),
    );
  }
}