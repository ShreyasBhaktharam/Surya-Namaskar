import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color darkText = Color.fromRGBO(0, 0, 0, 0.87);

class AboutPage extends StatelessWidget {
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
        iconTheme: IconThemeData(color: Colors.black.withOpacity(0.54)),
        elevation: 0.0,
        leading: IconButton(
          alignment: Alignment.centerLeft,
          icon: Icon(Icons.arrow_back),
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          color: Colors.black.withOpacity(0.5),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        title: Text(
          'About',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Roboto-Medium",
            fontSize: ScreenUtil().setSp(20.0, allowFontScalingSelf: true),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SuryaNamaskar',
              style: TextStyle(
                fontFamily: "Roboto-Medium",
                fontSize: ScreenUtil().setSp(34.0, allowFontScalingSelf: true),
                color: darkText.withOpacity(darkText.opacity * 0.75),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17.0, bottom: 14.0),
              child: Text(
                "v1.0",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: ScreenUtil().setSp(17.0, allowFontScalingSelf: true),
                    height: ScreenUtil().setHeight(1.5),
                    color: darkText.withOpacity(darkText.opacity * 0.5)),
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Text(
                    'SuryaNamaskar is a set of 12 powerful yoga asanas (postures) that has stupendous physical , mental and spiritual benefits.'
                        'This workout is best done during sunrise on an empty stomach. This app will give you a quick but effective walk-through for your well-being.'
                    ' Surya Namaskar consists of two sets of 12 rounds of yoga poses each set. \n'
                  '\nThis app was made using Flutter and was inspired from various sources.',
                    style: TextStyle(
                      color: darkText.withOpacity(darkText.opacity * 0.75),
                      fontFamily: "Roboto",
                      fontSize: ScreenUtil().setSp(17.0, allowFontScalingSelf: true),
                      height: ScreenUtil().setHeight(1.5),
                    ),
                  ),
                ],
              ),
            ),

            RichText(
              text: TextSpan(
                text: 'Developed by ',
                style: TextStyle(
                  color: darkText.withOpacity(darkText.opacity * 0.75),
                  fontFamily: "Roboto",
                  fontSize: ScreenUtil().setSp(17.0, allowFontScalingSelf: true),
                  height: ScreenUtil().setHeight(1.5),
                ),
                children: [
                  TextSpan(
                    text: '\nShreyas Bhaktharam\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Text(
              'Built with',
              style: TextStyle(
                  fontFamily: "Roboto",
                fontSize: ScreenUtil().setSp(17.0, allowFontScalingSelf: true),
                  height: 1.5,
                  color: Colors.black.withOpacity(0.5),
              ),
            ),

            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: Row(
                  children: [
                    Image.asset(
                      'images/flutter_logo.png',
                      height: ScreenUtil().setHeight(45.0),
                    width: ScreenUtil().setWidth(37.0),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Flutter",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(26.0, allowFontScalingSelf: true),
                            color: darkText.withOpacity(darkText.opacity * 0.6),
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
