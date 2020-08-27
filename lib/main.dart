import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga/about.dart';
import 'package:yoga/landing_page.dart';
import 'package:yoga/learn_steps.dart';
import 'package:yoga/settings.dart';
import 'package:yoga/workout.dart';
import 'package:yoga/workout_config.dart';
import 'splah_screen.dart';

void main() {
  runApp(Yoga());
}

class Yoga extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes : {
        '/' : (context) => LandingPage(),
        '/about' : (context) => AboutPage(),
        '/learn' : (context) => LearnSteps(),
        '/settings' : (context) => Settings(),
        '/workout' : (context) => Workout(),
        '/config' : (context) => Config(),
       '/splash' : (context) => SplashScreen(),
      },
    );
  }
}
