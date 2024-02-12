import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});
  final String phoneNumber = "555-555-5555";

  // void sendSms() {
  //   _launchAppWithUrl(
  //     scheme: 'sms',
  //     path: phoneNumber,
  //   );
  // }

  // void openPortfolio() {
  //   _launchAppWithUrl(
  //     scheme: 'sms',
  //     path: phoneNumber,
  //   );
  // }



  Future<void> _launchAppWithUrl({required String scheme, required String path}) async {
    final Uri launchUri = Uri(
      scheme: scheme,
      path: path,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: [
          const CenteredRow(children: [SizedBox(width: 200, height: 200, child: Image(
            image: AssetImage('assets/agent_smith.jpg')
          ))],),
          const CenteredRow(
            children: [
              Text(
                "Agent Smith",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const CenteredRow(children: [
            Text(
              "Intelligent AI Program",
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ]),
          CenteredRow(
            children: [
              TextButton(
                onPressed: () {
                  _launchAppWithUrl(
                    path: phoneNumber,
                    scheme: 'sms',
                  );
                },
                child: const Text(
                  "110-0101-1111",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )
              ),
            ]),
          CenteredRow(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            TextButton(
                onPressed: () {
                  _launchAppWithUrl(
                    path: 'github.com/Rudxain/RGB-digital-rain',
                    scheme: 'https',
                  );
                },
                child: const Text(
                  "github.com/agent_smith",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ),
            TextButton(
                onPressed: () {
                  _launchAppWithUrl(
                    path: "smith@matrix.com",
                    scheme: 'mailto',
                  );
                },
                child: const Text(
                  "smith@matrix.com",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ),
          ]),
        ],
      ),
    );
  }
}