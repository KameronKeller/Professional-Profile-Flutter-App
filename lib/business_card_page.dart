import 'package:flutter/material.dart';
import 'package:professional_profile_app/centered_row.dart';
import 'package:professional_profile_app/main.dart';
import 'package:professional_profile_app/widgets/contact_method.dart';
import 'package:professional_profile_app/widgets/current_position.dart';
import 'package:professional_profile_app/widgets/profile_name.dart';
import 'package:professional_profile_app/widgets/profile_photo.dart';
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
    return ResponsiveBusinessCard(userProfile: userProfile);
  }
}

class ResponsiveBusinessCard extends StatelessWidget {
  ResponsiveBusinessCard({super.key, required this.userProfile}) {
    profilePhoto = ProfilePhoto(userProfile: userProfile);
    profileName = ProfileName(userProfile: userProfile);
    currentPosition = CurrentPosition(userProfile: userProfile);
    phoneContact = ContactMethod(
      path: userProfile.phoneNumber,
      scheme: 'sms',
      textLabel: userProfile.phoneNumber,
      urlLauncher: _launchAppWithUrl,
      fontSize: 18,
    );
    github = ContactMethod(
      path: 'github.com/Rudxain/RGB-digital-rain',
      scheme: 'https',
      textLabel: userProfile.github,
      urlLauncher: _launchAppWithUrl,
      fontSize: 13,
    );
    email = ContactMethod(
      path: userProfile.email,
      scheme: 'mailto',
      textLabel: userProfile.email,
      urlLauncher: _launchAppWithUrl,
      fontSize: 13,
    );
  }

  final UserProfile userProfile;
  late final ProfilePhoto profilePhoto;
  late final ProfileName profileName;
  late final CurrentPosition currentPosition;
  late final ContactMethod phoneContact;
  late final ContactMethod github;
  late final ContactMethod email;


  Future<void> _launchAppWithUrl(
      {required String scheme, required String path}) async {
    final Uri launchUri = Uri(
      scheme: scheme,
      path: path,
    );
    await launchUrl(launchUri);
  }

  

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              profilePhoto,
              profileName,
              currentPosition,
              phoneContact,
              // ProfileName(userProfile: userProfile),
              // CurrentPosition(userProfile: userProfile),
              // ContactMethod(
              //   path: userProfile.phoneNumber,
              //   scheme: 'sms',
              //   textLabel: userProfile.phoneNumber,
              //   urlLauncher: _launchAppWithUrl,
              //   fontSize: 18,
              // ),
              Row(children: [
                Column(children: [
                  github,
                  
                  // ContactMethod(
                  //   path: 'github.com/Rudxain/RGB-digital-rain',
                  //   scheme: 'https',
                  //   textLabel: userProfile.github,
                  //   urlLauncher: _launchAppWithUrl,
                  //   fontSize: 13,
                  // ),
                ],),
                  Column(
                    children: [
                      email,
                      // ContactMethod(
                      //   path: userProfile.email,
                      //   scheme: 'mailto',
                      //   textLabel: userProfile.email,
                      //   urlLauncher: _launchAppWithUrl,
                      //   fontSize: 13,
                      // ),
                    ],
                  ),
              ],)
            ],
          ),
        );
      }
    );
  }
}