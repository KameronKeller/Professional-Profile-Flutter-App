import 'package:flutter/material.dart';
import 'package:professional_profile_app/main.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.userProfile});

  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text(userProfile.name)],
        ),
        Row(
          children: [Text(userProfile.email)],
        ),
        Row(
          children: [Text(userProfile.github)],
        ),
      ],
    );
  }
}
