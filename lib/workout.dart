import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'landing_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

int currentRound = 0;
int fRound;
bool first = true;
bool isPaused = false;

class Workout extends StatefulWidget {
  Workout({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  @override
  initState() {
    super.initState();

    if (first == true) {
      currentRound = 0;
      first = false;
    }
    //currentRound = 0;
    isPaused = false;

    Timer(Duration(seconds: widget.timePerStep), onClose1);
    final player = AudioCache();
    player.play('1.wav');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fRound = widget.rounds + currentRound;
    currentRound++;
    return ShowWorkout(
      text: '1. Pranamasana',
      image: 'images/pranamasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose1,
    );
  }

  void onClose1() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout1(
                  timePerStep: widget.timePerStep,
                  fRound: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout1 extends StatefulWidget {
  Workout1({this.timePerStep, this.fRound});

  final int timePerStep;
  final int fRound;
  @override
  _Workout1State createState() => _Workout1State();
}

class _Workout1State extends State<Workout1> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose2);
    final player = AudioCache();
    player.play('2.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '2. Hasta Uttanasana',
      image: 'images/hasta_uttanasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose2,
    );
  }

  void onClose2() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout2(
                  timePerStep: widget.timePerStep,
                  rounds: widget.fRound,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout2 extends StatefulWidget {
  Workout2({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout2State createState() => _Workout2State();
}

class _Workout2State extends State<Workout2> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose3);
    final player = AudioCache();
    player.play('3.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '3. Padahastasana',
      image: 'images/padahastasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose3,
    );
  }

  void onClose3() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout3(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout3 extends StatefulWidget {
  Workout3({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout3State createState() => _Workout3State();
}

class _Workout3State extends State<Workout3> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose4);
    final player = AudioCache();
    player.play('4.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '4. Ashwa Sanchalanasana',
      image: 'images/ashwa_sanchalanasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose4,
    );
  }

  void onClose4() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout4(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout4 extends StatefulWidget {
  Workout4({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout4State createState() => _Workout4State();
}

class _Workout4State extends State<Workout4> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose5);
    final player = AudioCache();
    player.play('5.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '5. Kumbhakasana',
      image: 'images/kumbhakasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose5,
    );
  }

  void onClose5() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout5(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout5 extends StatefulWidget {
  Workout5({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout5State createState() => _Workout5State();
}

class _Workout5State extends State<Workout5> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose6);
    final player = AudioCache();
    player.play('6.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '6. Ashtanga Namaskara',
      image: 'images/ashtanga_namaskara.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose6,
    );
  }

  void onClose6() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout6(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout6 extends StatefulWidget {
  Workout6({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout6State createState() => _Workout6State();
}

class _Workout6State extends State<Workout6> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose7);
    final player = AudioCache();
    player.play('7.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '7. Bhujangasana',
      image: 'images/bhujangasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose7,
    );
  }

  void onClose7() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout7(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout7 extends StatefulWidget {
  Workout7({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout7State createState() => _Workout7State();
}

class _Workout7State extends State<Workout7> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose8);
    final player = AudioCache();
    player.play('8.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '8. Parvatasana',
      image: 'images/hasta_uttanasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose8,
    );
  }

  void onClose8() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout8(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout8 extends StatefulWidget {
  Workout8({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout8State createState() => _Workout8State();
}

class _Workout8State extends State<Workout8> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose9);
    final player = AudioCache();
    player.play('9.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '9. Ashwa Sanchalanasana',
      image: 'images/ashwa_sanchalanasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose9,
    );
  }

  void onClose9() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout9(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout9 extends StatefulWidget {
  Workout9({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout9State createState() => _Workout9State();
}

class _Workout9State extends State<Workout9> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose10);
    final player = AudioCache();
    player.play('10.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '10. Padahastasana',
      image: 'images/padahastasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose10,
    );
  }

  void onClose10() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout10(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout10 extends StatefulWidget {
  Workout10({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout10State createState() => _Workout10State();
}

class _Workout10State extends State<Workout10> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose11);
    final player = AudioCache();
    player.play('11.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '11. Hasta Uttanasana',
      image: 'images/hasta_uttanasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose11,
    );
  }

  void onClose11() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Workout11(
                  timePerStep: widget.timePerStep,
                  rounds: widget.rounds,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class Workout11 extends StatefulWidget {
  Workout11({this.timePerStep, this.rounds});

  final int timePerStep;
  final int rounds;
  @override
  _Workout11State createState() => _Workout11State();
}

class _Workout11State extends State<Workout11> {
  @override
  initState() {
    super.initState();
    Timer(Duration(seconds: widget.timePerStep), onClose12);
    final player = AudioCache();
    player.play('12.wav');
  }

  Widget build(BuildContext context) {
    return ShowWorkout(
      text: '12. Pramanasana',
      image: 'images/pranamasana.jpg',
      currentRound: currentRound.toString(),
      finalRound: fRound.toString(),
      nextPage: onClose12,
    );
  }

  void onClose12() {
    if (isPaused == false) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => NextWidget(
                  remainingRounds: widget.rounds,
                  timePerStep: widget.timePerStep,
                ),
            transitionDuration: Duration(milliseconds: 400),
            transitionsBuilder: (context, anim1, anim2, child) {
              return FadeTransition(
                child: child,
                opacity: anim1,
              );
            }),
      );
    }
  }
}

class NextWidget extends StatelessWidget {
  NextWidget({this.remainingRounds, this.timePerStep});
  int remainingRounds;
  final int timePerStep;
  @override
  Widget build(BuildContext context) {
    remainingRounds--;
    if (remainingRounds != 0) {
      return Workout(
        rounds: remainingRounds,
        timePerStep: timePerStep,
      );
    } else {
      currentRound = 0;
      first = true;
      return LandingPage();
    }
  }
}

/////////////////////////////////////////////////////////

class ShowWorkout extends StatefulWidget {
  ShowWorkout(
      {this.text,
      this.image,
      this.currentRound,
      this.finalRound,
      this.nextPage});

  final String text;
  final String image;
  String currentRound;
  final String finalRound;
  final Function nextPage;

  var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    //descStyle: TextStyle(fontWeight: FontWeight.bold),
    //animationDuration: Duration(seconds: 1),
    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
      side: BorderSide(
        color: Colors.grey,
      ),
    ),
    titleStyle: TextStyle(
      color: Colors.red,
    ),
  );

  @override
  _ShowWorkoutState createState() => _ShowWorkoutState();
}

class _ShowWorkoutState extends State<ShowWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setSp(80.0, allowFontScalingSelf: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  'Round  ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  widget.currentRound,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenUtil().setSp(25.0, allowFontScalingSelf: true),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' /  ${widget.finalRound}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
//            Text(
//              'Round ${widget.currentRound} / ${widget.finalRound}',
//              style: TextStyle(
//                color: Colors.grey,
//                fontSize: ScreenUtil().setSp(20.0, allowFontScalingSelf: true),
//              ),
//            ),
            SizedBox(
              height: ScreenUtil().setHeight(90.0),
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: ScreenUtil().setSp(16.0, allowFontScalingSelf: true),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(35.0),
            ),
            Container(
              height: 250,
              width: 230,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(150.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      isPaused = !isPaused;
                    });

                    Alert(
                      type: AlertType.warning,
                      style: widget.alertStyle,
                      context: context,
                      title: "Workout Paused",
                      buttons: [
                        DialogButton(
                          onPressed: () {
                            setState(() {
                              isPaused = !isPaused;
                            });
                            Navigator.pop(context);
                            widget.nextPage();
                          },
                          child: Text(
                            "RESUME",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        DialogButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/', (Route<dynamic> route) => false);
                          },
                          child: Text(
                            "STOP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ).show();
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      isPaused = !isPaused;
                    });
                    Timer.run(() {
                      Alert(
                        type: AlertType.warning,
                        style: widget.alertStyle,
                        context: context,
                        title: "End Workout",
                        desc: "Are you sure you want to end your workout ?",
                        buttons: [
                          DialogButton(
                            onPressed: () {
                              widget.currentRound = '0';
                              first = true;
                              Timer.run(() {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/', (Route<dynamic> route) => false);
                              });
                            },
                            child: Text(
                              "YES",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          DialogButton(
                            onPressed: () {
                              setState(() {
                                isPaused = !isPaused;
                              });
                              Navigator.pop(context);
                              widget.nextPage();
                            },
                            child: Text(
                              "NO",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ).show();
                    });
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Icon(
                    Icons.stop,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
