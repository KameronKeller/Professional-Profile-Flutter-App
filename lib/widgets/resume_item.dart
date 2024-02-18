import 'package:flutter/material.dart';

class ResumeItem extends StatelessWidget {
  final String jobTitle;
  final String companyName;
  final String jobDates;
  final String location;
  final String jobDescription;

  const ResumeItem(
      {super.key,
      required this.jobTitle,
      required this.companyName,
      required this.jobDates,
      required this.location,
      required this.jobDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(jobTitle),
          ],
        ),
        Row(
          children: [
            Text(companyName),
            Text(jobDates),
            Text(location),
          ],
        ),
        Row(
          children: [Expanded(child: Text(jobDescription))],
        ),
      ],
    );
  }
}
