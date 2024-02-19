import 'package:flutter/material.dart';
import 'package:professional_profile_app/main.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.userProfile});

  final UserProfile userProfile;

  final double nameFontSize = 20;
  final double contactInfoFontSize = 15;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text(userProfile.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),)],
        ),
        Row(
          children: [Text(userProfile.email,
          style: TextStyle(
            fontSize: contactInfoFontSize
          ))],
        ),
        Row(
          children: [Text(userProfile.github,
          style: TextStyle(
            fontSize: contactInfoFontSize
          ))],
        ),
        SizedBox(height: 15,)
      ],
    );
  }
}
