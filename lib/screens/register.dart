import 'package:flutter/material.dart';
import 'package:amendatourguide/home.dart';
import 'package:amendatourguide/Widgets/popup.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool invisible = true;

  void inContact(TapDownDetails details) {
    setState(() {
      invisible = false;
    });
  }

  void outContact(TapUpDetails details) {
    setState(() {
      invisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.7,
      margin: EdgeInsets.only(top: height * 0.005),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  iconSize: 50,
                  icon: new Image.asset('assets/images/facebook.png'),
                  tooltip: 'Closes application',
                  onPressed: () => null,
                ),
                IconButton(
                  iconSize: 50,
                  icon: new Image.asset('assets/images/google-plus.png'),
                  tooltip: 'Closes application',
                  onPressed: () => null,
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              'or use your email account',
              style: TextStyle(
                  fontSize: 17, color: Colors.grey, fontFamily: 'OpenSans'),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Color(0xff1bb273)),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1bb273), width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1bb273), width: 2.0),
                ),

                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(8),
                  borderSide: new BorderSide(color: Color(0xff1bb273)),
                ),
                //fillColor: Colors.green
              ),
              validator: (val) {
                if (val.length == 0) {
                  return "Email cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                  fontFamily: "Poppins", color: Color(0xff1bb273)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextFormField(
              decoration: new InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Color(0xff1bb273)),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1bb273), width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1bb273), width: 2.0),
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(8),
                  borderSide: new BorderSide(),
                ),
                //fillColor: Colors.green
              ),
              validator: (val) {
                if (val.length == 0) {
                  return "Password cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                  fontFamily: "Poppins", color: Color(0xff1bb273)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            TextFormField(
              enableInteractiveSelection: false,
              obscureText: invisible,
              decoration: new InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Color(0xff1bb273)),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1bb273), width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff1bb273), width: 2.0),
                ),
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(8),
                  borderSide: new BorderSide(),
                ),
                suffixIcon: GestureDetector(
                  onTapDown: inContact, //call this method when incontact
                  onTapUp:
                      outContact, //call this method when contact with screen is removed
                  child: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xff1bb273),
                  ),
                ),

                //fillColor: Colors.green
              ),
              validator: (val) {
                if (val.length == 0) {
                  return "Password cannot be empty";
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.emailAddress,
              style: new TextStyle(
                  fontFamily: "Poppins", color: Color(0xff1bb273)),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.1,
              width: width * 0.8,
              decoration: BoxDecoration(
                // color: Color.fromARGB(110, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(30, 255, 255, 255),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 70,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff1bb273),
                    ),
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  onTap: () async {
                    await showDialog(
                        context: context, builder: (_) => ImageDialog());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
