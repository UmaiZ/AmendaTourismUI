import 'package:flutter/material.dart';
import 'package:amendatourguide/account.dart';

class AccountScreen extends StatefulWidget {
  bool isInstructionView = false;

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;

    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: statusBarHeight * 2),
        width: width * 0.7,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height * 0.02,
            ),
            Container(
                margin: EdgeInsets.only(left: width * 0.05),
                width: double.infinity,
                child: Text('Settings',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xff1bb273),
                        fontSize: 30,
                        fontFamily: 'Cabin'))),
            SizedBox(
              height: height * 0.06,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              child: Row(
                children: <Widget>[
                  Icon(Icons.account_circle, color: Color(0xff1bb273)),
                  Container(
                      margin: EdgeInsets.only(left: width * 0.03),
                      child: Text('Account',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xff1bb273),
                              fontSize: 20,
                              fontFamily: 'Cabin'))),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Text('Edit Profile',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xffB3B6B7),
                              fontSize: 20,
                              fontFamily: 'Cabin'))),
                  Icon(Icons.arrow_forward_ios, color: Color(0xff1bb273)),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Text('Change Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xffB3B6B7),
                              fontSize: 20,
                              fontFamily: 'Cabin'))),
                  Icon(Icons.arrow_forward_ios, color: Color(0xff1bb273)),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              child: Row(
                children: <Widget>[
                  Icon(Icons.notifications_none, color: Color(0xff1bb273)),
                  Container(
                      margin: EdgeInsets.only(left: width * 0.03),
                      child: Text('Notification',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xff1bb273),
                              fontSize: 20,
                              fontFamily: 'Cabin'))),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Text('Notifications',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xffB3B6B7),
                              fontSize: 20,
                              fontFamily: 'Cabin'))),
                  Switch(
                    value: widget.isInstructionView,
                    onChanged: (bool isOn) {
                      print(isOn);
                      setState(() {
                        widget.isInstructionView = isOn;
                        print(widget.isInstructionView);
                      });
                    },
                    activeColor: Color(0xff1bb273),
                    inactiveTrackColor: Color(0xffABEBC6),
                    inactiveThumbColor: Color(0xffABEBC6),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.04),
              padding: EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: Text('App Notification',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xffB3B6B7),
                              fontSize: 20,
                              fontFamily: 'Cabin'))),
                  Switch(
                    value: widget.isInstructionView,
                    onChanged: (bool isOn) {
                      print(isOn);
                      setState(() {
                        widget.isInstructionView = isOn;
                        print(widget.isInstructionView);
                      });
                    },
                    activeColor: Color(0xff1bb273),
                    inactiveTrackColor: Color(0xffABEBC6),
                    inactiveThumbColor: Color(0xffABEBC6),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Card(
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 10,
              child: Container(
                height: height * 0.08,
                width: width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Row contents vertically,

                  children: <Widget>[
                    Icon(Icons.exit_to_app, color: Color(0xff1bb273)),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccountPageWidget()),
                          );
                        },
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
