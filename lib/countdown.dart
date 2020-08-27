import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'workout.dart';

class CountDown extends StatefulWidget {

  CountDown({this.rounds, this.timePerStep});
  final int rounds;
  final int timePerStep;
  @override
  _CountDownState createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'Get Ready !',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,

                ),
              ),
            ),
            Center(
              child: CircularCountDownTimer(
                duration: 10,
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.white,
                fillColor: Colors.blue,
                strokeWidth: 5.0,
                textStyle: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                isReverse: true,
                onComplete: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Workout(
                        rounds: widget.rounds,
                        timePerStep: widget.timePerStep,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
