import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';
import 'package:professional_profile_app/main.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({
    super.key,
    required this.userProfile,
  });

  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return CenteredRow(
      children: [
        Text(
          userProfile.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
