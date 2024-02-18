import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';
import 'package:professional_profile_app/main.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
    required this.userProfile,
  });

  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return CenteredRow(children: [SizedBox(width: 200, height: 200, child: Image(
      image: AssetImage(userProfile.profilePhotoPath)
    ))],);
  }
}
