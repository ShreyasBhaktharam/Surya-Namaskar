import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 400,
      height: 840.0,
      allowFontScaling: true,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Suryanamaskar'),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Menu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Learn the steps'),
              onTap: () {
                Navigator.pushNamed(context, '/learn');
              },
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Will be provided later
                  Navigator.pushNamed(context, '/settings');
                }),
            SizedBox(
              height: ScreenUtil().setHeight(10.0),
            ),
            ListTile(
                leading: Icon(Icons.help),
                title: Text('About'),
                onTap: () {
                  // Will be provided later
                  Navigator.pushNamed(context, '/about');
                }),
//            SizedBox(
//              height: 350.0,
//            ),
//            ListTile(
//                leading: Icon(Icons.share),
//                title: Text('Share App'),
//                onTap: () {
//                  Navigator.pop(context);
//                }),
          ],
        ),
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: Center(
                  child: Text(
                  'Welcome to SuryaNamaskar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: ScreenUtil().setSp(35.0, allowFontScalingSelf: true),
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Roboto',
                  ),
                ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(50.0),
              ),

              Expanded(
                flex: 2,
                child: Hero(
                  tag: 'yoga',
                  child: Image(
                    height: 230.0,
                    width: 230.0,
                    image: AssetImage('images/surya_namaskar-cropped.png'),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10.0),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                  child: Text(
                    'Something Wrong ?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: ScreenUtil().setSp(15.0, allowFontScalingSelf: true),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/config');
                  },
                  child: Container(
                    color: Colors.blue,
                    //height: ScreenUtil().setHeight(60.0),
                    margin: EdgeInsets.only(top: ScreenUtil().setHeight(10.0), bottom: ScreenUtil().setHeight(0.0)),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'LET US BEGIN !',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(20.0, allowFontScalingSelf: true),
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
      ),
    );
  }
}

class Button extends StatelessWidget {
  Button({this.path, this.text});

  final String path;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, path);
      },
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.blue,
    );
  }
}
