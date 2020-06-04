import 'package:flutter/material.dart';
import 'package:amendatourguide/account.dart';

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Dialog(
      backgroundColor: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        child: Container(
          color: Color(0xff1bb273),
          padding: EdgeInsets.all(50),
          width: width * 0.90,
          height: height * 0.7,
          child: Column(
            children: <Widget>[
              Container(
                  height: height * 0.15,
                  child: Image.asset('assets/images/cc.png')),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Thank you for your registration !',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 22, fontFamily: 'Cabin', color: Colors.white),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                "We're glad you're here! Before you start exploring we just send you email confirmation.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, fontFamily: 'OpenSans', color: Colors.white),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.8,
                decoration: BoxDecoration(
                  // color: Color.fromARGB(110, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff17202A),
                      ),
                      child: Text(
                        "Got it",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AccountPageWidget()),
                      );
                    },
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
