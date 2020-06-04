import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PlaceDetails extends StatefulWidget {
  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    setState(() {
      print(height);
    });
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: statusBarHeight * 0.8),
          height: height * 0.35,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/11.png',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.32),
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Container(
                        height: height * 0.01,
                        width: width * 0.1,
                        color: Color(0xff1bb273),
                      ),
                      SizedBox(
                        height: height * 0.031,
                      ),
                      Container(
                        width: width,
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          'PLACES',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(fontSize: 30, color: Color(0xff1bb273)),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Places(),
                      Places(),
                      Places(),
                      Places(),
                      Places(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: width * 0.03),
              padding: EdgeInsets.only(top: statusBarHeight * 2),
              child: Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        SizedBox(
          height: height * 0.01,
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10.0,
          child: Container(
              width: width * 0.9,
              child: Row(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    width: width * 0.25,
                    child: Image.asset('assets/images/place.jpg'),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Heading',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color(0xff1bb273),
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10, top: 4),
                          child: Text(
                            'sit amet facilisis magna etiam tempor orci eu lobortis elementum',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )
              ])),
        )
      ],
    );
  }
}
