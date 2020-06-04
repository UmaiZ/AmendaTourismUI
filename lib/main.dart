import 'package:flutter/material.dart';
import 'package:amendatourguide/screens/place_list.dart';
import 'package:amendatourguide/screens/events_list.dart';
import 'package:amendatourguide/account.dart';
import 'package:amendatourguide/screens/Form.dart';
import 'package:amendatourguide/home.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountPageWidget(),
    );
  }
}
