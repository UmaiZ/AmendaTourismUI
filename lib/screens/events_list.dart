import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './event_details.dart';

class EventList extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  final List _events = [
    {
      'name': 'Event Foot Festival',
      'sentence': 'Food industry love',
      'date': '02',
      'month': 'JUN',
      'year': '2020',
      'price': '121',
      'description':
          'sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum'
    },
    {
      'name': 'Event Foot Festival',
      'sentence': 'Food industry love',
      'date': '02',
      'month': 'JUN',
      'year': '2020',
      'price': '121',
      'description':
          'sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum'
    },
    {
      'name': 'Event Foot Festival',
      'sentence': 'Food industry love',
      'date': '02',
      'month': 'JUN',
      'year': '2020',
      'price': '121',
      'description':
          'sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum'
    },
    {
      'name': 'Event Foot Festival',
      'sentence': 'Food industry love',
      'date': '02',
      'month': 'JUN',
      'year': '2020',
      'price': '121',
      'description':
          'sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum sit amet facilisis magna etiam tempor orci eu lobortis elementum'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Expanded(
      child: Container(
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: statusBarHeight * 5,
              flexibleSpace: new FlexibleSpaceBar(
                title: const Text(
                  'Event Lists',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Color(0xff1bb273)),
                ),
              ),
            ),
            new SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                sliver: new SliverFixedExtentList(
                  itemExtent: 280.0,
                  delegate: new SliverChildBuilderDelegate(
                      (builder, index) => _buildListItem(index),
                      childCount: _events.length),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventDetails()),
        );
      },
      child: Center(
        child: Card(
          margin: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 30,
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  width: width * 0.6,
                  height: height * 0.17,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/6.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.17),
                  child: Container(
                    height: height * 0.15,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 30, bottom: 7, left: 15, right: 15),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _events[index]['name'],
                                style: TextStyle(
                                    color: Color(0xff1bb273),
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Text(
                                _events[index]['sentence'],
                                style: TextStyle(
                                    color: Color(0xff808080),
                                    fontSize: 15,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                '${_events[index]['date']} ${_events[index]['month']} ${_events[index]['year']}',
                                style: TextStyle(
                                    color: Color(0xff808080),
                                    fontSize: 15,
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: Color(0xff1bb273),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: width * 0.02),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Container(
                            height: height * 0.08,
                            width: width * 0.13,
                            color: Color(0xff1bb273),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "8",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xffFFFFFF),
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Jun",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xffFFFFFF),
                                        fontFamily: 'OpenSans',
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
