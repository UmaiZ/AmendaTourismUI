import 'package:flutter/material.dart';
import 'package:amendatourguide/screens/place_list.dart';
import 'package:amendatourguide/screens/events_list.dart';
import 'package:amendatourguide/account.dart';
import 'package:amendatourguide/screens/Form.dart';
import 'package:amendatourguide/screens/account_screen.dart';

class MyStatefulWidget extends StatefulWidget {

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  goToAccount() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AccountPageWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Color(0xff1bb273),
            groupAlignment: 1.2,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            unselectedLabelTextStyle: TextStyle(color: Color(0xffFFFFFF)),
            selectedLabelTextStyle: TextStyle(
                color: Color(0xffFFFFFF), fontWeight: FontWeight.bold),
            destinations: [
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text("EVENT"),
                  ),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text("PLACES"),
                  ),
                ),
              ),

              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text("FORM"),
                  ),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox.shrink(),
                label: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text("ACCOUNT"),
                  ),
                ),
              ),
            ],
          ),
          VerticalDivider(
              thickness: 1, width: MediaQuery.of(context).size.width * 0.01),
          if (_selectedIndex == 1) PlaceList(),
          if (_selectedIndex == 0) EventList(),
          if (_selectedIndex == 2) FormScreen(),
          if (_selectedIndex == 3) AccountScreen(),
        ],
      ),
    );
  }
}
