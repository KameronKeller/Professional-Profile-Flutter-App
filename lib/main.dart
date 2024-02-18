import 'package:flutter/material.dart';
import 'business_card_page.dart';
import 'resume_page.dart';
import 'predictor_page.dart';

class UserProfile {
  final String name;
  final String email;
  final String github;
  final String phoneNumber;
  final String currentPosition;

  const UserProfile({
    required this.name,
    required this.email,
    required this.github,
    required this.phoneNumber,
    required this.currentPosition
  });
}


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final UserProfile userProfile = const UserProfile(
      name: "Agent Smith",
      email: "smith@matrix.com",
      github: "github.com/agent_smith",
      phoneNumber: "110-0101-1111",
      currentPosition: "Intelligent AI Program"
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        title: 'Call Me Maybe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage(title: 'Call Me Maybe', userProfile: userProfile),
      ),
    );
  }
}

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
          BusinessCardPage(userProfile: widget.userProfile),
          ResumePage(userProfile: widget.userProfile),
          PredictorPage(),
      ],)
    );
  }

  AppBar appNavBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(widget.title),
      bottom: const TabBar(
        tabs: [
          Tab(child: Icon(Icons.abc)),
          Tab(child: Icon(Icons.airline_seat_individual_suite)),
          Tab(child: Icon(Icons.network_cell))
      ]),
    );
  }
}
