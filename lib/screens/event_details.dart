import 'package:flutter/material.dart';
import 'package:amendatourguide/Widgets/Abouttext.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EventDetails extends StatefulWidget {
  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    setState(() {
      print(height);
    });

    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
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
                        height: height * 0.05,
                      ),
                      Container(
                        width: width,
                        margin: EdgeInsets.only(left: width * 0.03),
                        child: Text(
                          'NYC Food Festival',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Color(0xff1bb273), fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_today,
                              size: 20,
                              color: Color(0xff1bb273),
                            ),
                            SizedBox(width: width * 0.02), // give it width
                            Column(
                              children: <Widget>[
                                Text(
                                  'Sat, May 25, 2020',
                                  style: TextStyle(
                                      color: Color(0xff797D7F),
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: width * 0.03),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.attach_money,
                              size: 20,
                              color: Color(0xff1bb273),
                            ),
                            SizedBox(width: width * 0.02), // give it width
                            Column(
                              children: <Widget>[
                                Text(
                                  '25,000 PKR',
                                  style: TextStyle(
                                      color: Color(0xff797D7F),
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width,
                        margin: EdgeInsets.only(left: width * 0.03),
                        child: Text(
                          'Snaps',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Color(0xff1bb273), fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                          child: Column(
                        children: <Widget>[
                          CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 2.0,
                              enlargeCenterPage: true,
                            ),
                            items: imageSliders,
                          ),
                        ],
                      )),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width,
                        margin: EdgeInsets.only(left: width * 0.03),
                        child: Text(
                          'About',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Color(0xff1bb273), fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              right: width * 0.03, left: width * 0.03),
                          child: DescriptionTextWidget(
                              text:
                                  "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.")),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        width: width,
                        margin: EdgeInsets.only(left: width * 0.03),
                        child: Text(
                          'Included',
                          textAlign: TextAlign.left,
                          style:
                              TextStyle(color: Color(0xff1bb273), fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Included(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Included(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Included(),
                      SizedBox(
                        height: height * 0.01,
                      ),
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
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: height * 0.1,
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
                    "BOOK NOW",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                onTap: () {
                  return print("Tap");
                },
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class Included extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.93,
      child: Card(
        elevation: 30,
        child: Container(
          margin: EdgeInsets.only(left: width * 0.02),
          child: Row(
            children: <Widget>[
              Container(
                width: width * 0.2,
                child: Image.asset('assets/images/3.jpg'),
              ),
              Container(
                width: width * 0.6,
                margin: EdgeInsets.only(left: width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Food',
                      style: TextStyle(
                          color: Color(0xff1bb273),
                          fontSize: 18,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                        'sit amet facilisis magna etiam tempor orci eu lobortis elementum',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
