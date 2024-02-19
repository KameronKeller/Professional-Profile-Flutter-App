import 'package:flutter/material.dart';
import 'package:professional_profile_app/widgets/centered_row.dart';

class ContactMethod extends StatelessWidget {
  const ContactMethod({
    super.key,
    required this.path,
    required this.scheme,
    required this.textLabel,
    required this.urlLauncher,
    required this.fontSize,
  });
  
  final String path;
  final String scheme;
  final String textLabel;
  final Future<void> Function({required String path, required String scheme}) urlLauncher;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return CenteredRow(
            children: [
              TextButton(
                onPressed: () {
                  urlLauncher(
                    path: path,
                    scheme: scheme,
                  );
                },
                child: Text(
                  textLabel,
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                )
              ),
            ]);
  }
}