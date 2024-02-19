import 'package:flutter/material.dart';
import 'package:professional_profile_app/models/user_profile.dart';
import 'package:professional_profile_app/widgets/centered_row.dart';
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
          style: TextStyle(
            fontFamily: Theme.of(context).textTheme.bodyLarge?.fontFamily,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
