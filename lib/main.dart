import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/business_card_page.dart';
import 'screens/resume_page.dart';
import 'screens/predictor_page.dart';

class UserProfile {
  final String name;
  final String email;
  final String github;
  final String phoneNumber;
  final String currentPosition;
  final String profilePhotoPath;

  const UserProfile({
    required this.name,
    required this.email,
    required this.github,
    required this.phoneNumber,
    required this.currentPosition,
    required this.profilePhotoPath,
  });
}


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const App());
}

// ThemeData _buildTheme(brightness) {
//   var baseTheme = ThemeData(brightness: brightness);

//   return baseTheme.copyWith(
//     textTheme: GoogleFonts.vt323TextTheme(baseTheme.textTheme),
//   );
// }


class App extends StatelessWidget {
  const App({super.key});

  final UserProfile userProfile = const UserProfile(
      name: "Agent Smith",
      email: "smith@matrix.com",
      github: "github.com/agent_smith",
      phoneNumber: "110-0101-1111",
      currentPosition: "Intelligent AI Program",
      profilePhotoPath: "assets/agent_smith.jpg",
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        title: 'Call Me Maybe',
        // theme: _buildTheme(Brightness.light),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
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
          Theme(
            data: Theme.of(context).copyWith(
              textTheme: GoogleFonts.vt323TextTheme(Theme.of(context).textTheme),
            ),
            child: BusinessCardPage(userProfile: widget.userProfile)),
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
          Tab(child: Icon(Icons.person_pin_circle_rounded)),
          Tab(child: Icon(Icons.description)),
          Tab(child: Icon(Icons.question_mark))
      ]),
    );
  }
}
