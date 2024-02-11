import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [Text("Name")],),
        Row(children: [Text("Email")],),
        Row(children: [Text("Github")],),
        ProfessionalExperience(),
      ],
    );
  }
}

class ProfessionalExperience extends StatelessWidget{
  const ProfessionalExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [Text("Position")],),
        Row(children: [Text("Company"), Text("Dates"), Text("Location")],),
        Row(children: [Text("Description")],)
      ],
    );
  }
}