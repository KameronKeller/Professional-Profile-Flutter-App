import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:professional_profile_app/models/user_profile.dart';
import 'package:professional_profile_app/screens/business_card_page.dart';
import 'package:professional_profile_app/screens/predictor_page.dart';
import 'package:professional_profile_app/screens/resume_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title, required this.userProfile});

  final String title;
  final UserProfile userProfile;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appNavBar(context),
      body: TabBarView(
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              textTheme: GoogleFonts.vt323TextTheme(Theme.of(context).textTheme),
            ),
            child: BusinessCardPage(userProfile: widget.userProfile)),
          ResumePage(userProfile: widget.userProfile),
          const PredictorPage(),
      ],)
    );
  }

  AppBar appNavBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
      bottom: const TabBar(
        tabs: [
          Tab(child: Icon(Icons.person_pin_circle_rounded)),
          Tab(child: Icon(Icons.description)),
          Tab(child: Icon(Icons.question_mark))
      ]),
    );
  }
}
