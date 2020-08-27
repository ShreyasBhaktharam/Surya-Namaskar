import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool toggleValue = false;
  @override
  Widget build(BuildContext context) {
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
            'Settings',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Roboto-Medium",
            fontSize: 20.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
                Text(
                  '           Notifications',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 19.0,
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Enable message notifications',
                    ),
                    Switch(
                      activeColor: Colors.blue,
                      value: toggleValue,
                      onChanged: (newVal) {
                        setState(() {
                          toggleValue = newVal;
                        });
                      },
                    ),
                  ],
                ),

            Divider(
              color: Colors.grey,
              height: 30,
            ),

                Text(
                  '          Help',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

                Text(
                  '              Send Feedback',

                ),

                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '                   Report technical issues or suggest new features',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey,
                  ),
                ),
              ],
        ),
      ),
    );
  }
}
