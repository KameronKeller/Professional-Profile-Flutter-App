import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';
import 'package:professional_profile_app/main.dart';

class CurrentPosition extends StatelessWidget {
  const CurrentPosition({
    super.key,
    required this.userProfile,
  });

  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return CenteredRow(children: [
      Text(
        userProfile.currentPosition,
        style: const TextStyle(
          fontSize: 18,
        ),
      )
    ]);
  }
}
