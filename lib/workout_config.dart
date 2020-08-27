import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoga/workout_config_next.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  int rounds = 3;
  int timePerStep = 3; //seconds
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
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'How many rounds would you like to do today?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize:
                        ScreenUtil().setSp(20.0, allowFontScalingSelf: true),
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
                  borderRadius:
                      BorderRadius.circular(ScreenUtil().setWidth(15.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(30.0),
                    ),
                    Text(
                      'ROUNDS',
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(18.0),
                        color: Colors.black,
                      ),
                    ),

//                    SizedBox(
//                      height: ScreenUtil().setHeight(2.0),
//                    ),
                    Text(
                      rounds.toString(),
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
                        value: rounds.toDouble(),
                        min: 2.0,
                        max: 108.0,
                        onChanged: (double newValue) {
                          setState(() {
                            rounds = newValue.round();
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfigNext(
                        rounds: rounds,
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
                      'NEXT',
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

// Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: [
//            Expanded(
//              child: Center(
//                child: Text(
//                  'Choose your preference',
//                  style: TextStyle(
//                    fontSize: 20.0,
//                    fontWeight: FontWeight.w500,
//                  ),
//                ),
//              ),
//            ),
//            Expanded(
//              child: Container(
//                margin: EdgeInsets.all(12.0),
//                decoration: BoxDecoration(
//                  color: Colors.blue,
//                  borderRadius: BorderRadius.circular(15.0),
//                ),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: [
//                    SizedBox(
//                      height: 30.0,
//                    ),
//                    Text(
//                      'ROUNDS',
//                    ),
//                    SizedBox(
//                      height: 5.0,
//                    ),
//                    Text(
//                      rounds.toString(),
//                    ),
//                    SliderTheme(
//                      data: SliderTheme.of(context).copyWith(
//                        inactiveTrackColor: Color(0xFF8D8E98),
//                        activeTrackColor: Colors.white54,
//                        thumbColor: Colors.lightBlueAccent,
//                      ),
//                      child: Slider(
//                        value: rounds.toDouble(),
//                        min: 2.0,
//                        max: 108.0,
//                        onChanged: (double newValue) {
//                          setState(() {
//                            rounds = newValue.round();
//                          });
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            Expanded(
//              child: Container(
//                margin: EdgeInsets.all(12.0),
//                decoration: BoxDecoration(
//                  color: Colors.blue,
//                  borderRadius: BorderRadius.circular(15.0),
//                ),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: [
//                    SizedBox(
//                      height: 30.0,
//                    ),
//                    Text(
//                      'TIME PER STEP',
//                    ),
//                    SizedBox(
//                      height: 5.0,
//                    ),
//                    Text(
//                      timePerStep.toString(),
//                    ),
//                    SliderTheme(
//                      data: SliderTheme.of(context).copyWith(
//                        inactiveTrackColor: Color(0xFF8D8E98),
//                        activeTrackColor: Colors.white54,
//                        thumbColor: Colors.lightBlueAccent,
//                      ),
//                      child: Slider(
//                        value: timePerStep.toDouble(),
//                        min: 1.0,
//                        max: 10.0,
//                        onChanged: (double newValue) {
//                          setState(() {
//                            timePerStep = newValue.round();
//                          });
//                        },
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            Expanded(
//              flex: 2,
//              child: GestureDetector(
//                onTap: () {
//                  Navigator.push(context, MaterialPageRoute(
//                      builder: (context) => Workout(
//                        timePerStep: timePerStep,
//                        rounds: rounds,
//                      ),
//                  ),
//                  );
//                },
//                child: Container(
//                  margin: EdgeInsets.all(110.0),
//                  width: 200.0,
//                  height: 10.0,
//                  decoration: BoxDecoration(
//                    color: Colors.blue,
//                    borderRadius: BorderRadius.circular(12.0),
//                  ),
//                  child: Center(
//                    child: Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Text(
//                        'Start Workout',
//                        style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 20.0,
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ),
