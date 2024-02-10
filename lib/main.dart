import 'package:flutter/material.dart';
import 'business_card_page.dart';
import 'resume_page.dart';
import 'predictor_page.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

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
        home: const HomePage(title: 'Call Me Maybe'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appNavBar(context),
      body: const TabBarView(
        children: [
          BusinessCardPage(),
          ResumePage(),
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
