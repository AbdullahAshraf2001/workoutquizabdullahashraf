import 'package:flutter/material.dart';
import 'package:workoutquizabdullahashraf/ui/screens/home/homeScreen.dart';
import 'package:workoutquizabdullahashraf/ui/screens/home/tabs/SecondScr/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, fontFamily: "Inter"),
      home: SecondScreen(),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
