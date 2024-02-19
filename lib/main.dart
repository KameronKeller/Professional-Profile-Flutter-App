import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:professional_profile_app/models/user_profile.dart';
import 'package:professional_profile_app/screens/home_page.dart';


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
