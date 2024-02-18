import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';
import 'package:professional_profile_app/main.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key, required this.userProfile});

  final UserProfile userProfile;


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
          ProfilePhoto(userProfile: userProfile),
          ProfileName(userProfile: userProfile),
          CurrentPosition(userProfile: userProfile),
          ContactMethod(
            path: userProfile.phoneNumber,
            scheme: 'sms',
            textLabel: userProfile.phoneNumber,
            urlLauncher: _launchAppWithUrl,
            fontSize: 18,
          ),
          Row(children: [
            Column(children: [
              ContactMethod(
                path: 'github.com/Rudxain/RGB-digital-rain',
                scheme: 'https',
                textLabel: userProfile.github,
                urlLauncher: _launchAppWithUrl,
                fontSize: 13,
              ),
            ],),
              Column(
                children: [
                  ContactMethod(
                    path: userProfile.email,
                    scheme: 'mailto',
                    textLabel: userProfile.email,
                    urlLauncher: _launchAppWithUrl,
                    fontSize: 13,
                  ),
                ],
              ),
          ],)
        ],
      ),
    );
  }
}

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


// class PhoneNumber extends StatelessWidget {
//   const PhoneNumber({
//     super.key,
//     required this.userProfile,
//     required this.urlLauncher,
//   });
  
//   final UserProfile userProfile;
//   final Future<void> Function({required String path, required String scheme}) urlLauncher;

//   @override
//   Widget build(BuildContext context) {
//     return CenteredRow(
//             children: [
//               TextButton(
//                 onPressed: () {
//                   urlLauncher(
//                     path: userProfile.phoneNumber,
//                     scheme: 'sms',
//                   );
//                 },
//                 child: Text(
//                   userProfile.phoneNumber,
//                   style: const TextStyle(
//                     fontSize: 18,
//                   ),
//                 )
//               ),
//             ]);
//   }
// }

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