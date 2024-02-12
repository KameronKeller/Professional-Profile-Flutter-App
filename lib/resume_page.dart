import 'package:flutter/material.dart';
import 'data/resume_items.dart';

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

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: agentSmithResume.length,
      itemBuilder: (context, index) {
        return ResumeItem(
          jobTitle: agentSmithResume[index]['jobTitle'], companyName: agentSmithResume[index]['company'], jobDates: agentSmithResume[index]['dates'],
          location: agentSmithResume[index]['location'], jobDescription: agentSmithResume[index]['description']);
      },
    );
  }
}

class ProfessionalExperience extends StatelessWidget {
  const ProfessionalExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [Text("Position")],
        ),
        Row(
          children: [Text("Company"), Text("Dates"), Text("Location")],
        ),
        Row(
          children: [Text("Description")],
        )
      ],
    );
  }
}
