import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yoga/countdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfigNext extends StatefulWidget {
  ConfigNext({this.rounds});

  final int rounds;
  @override
  _ConfigNextState createState() => _ConfigNextState();
}

class _ConfigNextState extends State<ConfigNext> {
  int timePerStep = 3;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 400,
      height: 840.0,
      allowFontScaling: true,
    );
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'How long should each step be ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(20.0, allowFontScalingSelf: true),
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(3.0),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(ScreenUtil().setWidth(13.0)),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(15.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(30.0),
                    ),
                    Text(
                      'SECONDS',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Colors.black,
                      ),
                    ),
//                    SizedBox(
//                      height: ScreenUtil().setHeight(5.0),
//                    ),
                    Text(
                      timePerStep.toString(),
                      style: TextStyle(
                        fontSize: ScreenUtil()
                            .setSp(70.0, allowFontScalingSelf: true),
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.lightBlueAccent,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      ),
                      child: Slider(
                        value: timePerStep.toDouble(),
                        min: 1.0,
                        max: 10.0,
                        onChanged: (double newValue) {
                          setState(() {
                            timePerStep = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(50.0),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CountDown(
                        rounds: widget.rounds,
                        timePerStep: timePerStep,
                      ),
                    ),
                  );
                },
                child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.only(
                      top: ScreenUtil().setHeight(130.0),
                      bottom: ScreenUtil().setHeight(0.0)),
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'START WORKOUT !',
                      style: TextStyle(
                        fontSize: ScreenUtil()
                            .setSp(20.0, allowFontScalingSelf: true),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
