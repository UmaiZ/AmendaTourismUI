import 'package:flutter/material.dart';
import 'package:amendatourguide/screens/place_list.dart';
import 'package:amendatourguide/screens/events_list.dart';
import 'package:amendatourguide/screens/register.dart';
import 'package:amendatourguide/screens/login.dart';
import './home.dart';

class AccountPageWidget extends StatefulWidget {
  @override
  _AccountPageWidgetState createState() => _AccountPageWidgetState();
}

class _AccountPageWidgetState extends State<AccountPageWidget> {
  int _selectedIndex = 0;
String teXt = 'Login With Your Account';

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xff1bb273),
            height: height * 0.35,
            child: Container(

              decoration: BoxDecoration(
                image: DecorationImage(

                  image: AssetImage(
                    'assets/images/11.png',

                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.3),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50)),
              child: Container(
                height: height * 0.1,
                color: Color(0xffECF0F1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      teXt,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyStatefulWidget()),
              );
            },
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: width * 0.03),
                padding: EdgeInsets.only(top: statusBarHeight * 2),
                child: Icon(
                  Icons.close,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.4),
            child: Container(
              color: Color(0xffECF0F1),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                child: Container(
                  child: Container(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        LayoutBuilder(
                          builder: (context, constraint) {
                            return SingleChildScrollView(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                    minHeight: constraint.maxHeight),
                                child: IntrinsicHeight(
                                  child: NavigationRail(
                                    backgroundColor: Colors.white,
                                    groupAlignment: 1,
                                    selectedIndex: _selectedIndex,
                                    onDestinationSelected: (int index) {
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                    },
                                    labelType: NavigationRailLabelType.all,
                                    unselectedLabelTextStyle:
                                        TextStyle(color: Color(0xff1bb273)),
                                    selectedLabelTextStyle: TextStyle(
                                        color: Color(0xff1bb273),
                                        fontWeight: FontWeight.bold),
                                    destinations: [
                                      NavigationRailDestination(
                                        icon: SizedBox.shrink(),
                                        label: GestureDetector(
                                          onTap: () {
                                            _selectedIndex = 0;
                                            print('Login');
                                            setState(() {
                                              teXt = 'Login With Your Account';
                                            });

                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 24),
                                            child: RotatedBox(
                                              quarterTurns: -1,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    _selectedIndex = 0;
                                                    print('Login');
                                                    setState(() {
                                                      teXt = 'Login With Your Account';
                                                    });

                                                  },
                                                  child: Text("LOGIN")),

                                            ),
                                          ),
                                        ),
                                      ),
                                      NavigationRailDestination(
                                        icon: SizedBox.shrink(),
                                        label: GestureDetector(
                                          onTap: () {
                                            _selectedIndex = 1;
                                            print('Register');
                                            setState(() {
                                              teXt = 'Create New Account';
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 24),
                                            child: RotatedBox(
                                              quarterTurns: -1,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    _selectedIndex = 1;
                                                    print('Register');
                                                    setState(() {
                                                      teXt = 'Create New Account';
                                                    });
                                                  },
                                                  child: Text("REGISTER")),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        VerticalDivider(
                            thickness: 0,
                            width: MediaQuery.of(context).size.width * 0.01),
                        if (_selectedIndex == 1)
                          RegisterScreen(),
                        if (_selectedIndex == 0)
                          LoginScreen(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
