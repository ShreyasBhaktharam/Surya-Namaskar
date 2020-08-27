import 'dart:async';
import 'package:flutter/material.dart';
import 'landing_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LandingPage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
            ),
          ),
          Hero(
            tag: 'yoga',
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/surya_namaskar-cropped.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
