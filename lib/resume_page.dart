import 'package:flutter/material.dart';
import 'package:professional_profile_app/main.dart';
import 'package:professional_profile_app/widgets/contact_info.dart';
import 'package:professional_profile_app/widgets/resume_item.dart';
import 'data/resume_items.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key, required this.userProfile});

  final UserProfile userProfile;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Increase the item count by 1 to handle adding a different widget as the first element
      // of the list
      // Ref: https://stackoverflow.com/a/63465618/7100879
      itemCount: agentSmithResume.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return ContactInfo(userProfile: userProfile);
        } else {
          return ResumeItem(
            // must subtract one from each index since item count was increased
            jobTitle: agentSmithResume[index - 1]['jobTitle'],
            companyName: agentSmithResume[index - 1]['company'],
            jobDates: agentSmithResume[index - 1]['dates'],
            location: agentSmithResume[index - 1]['location'],
            jobDescription: agentSmithResume[index - 1]['description']);
        }
      },
    );
  }
}