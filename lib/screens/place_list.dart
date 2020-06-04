import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './place_details.dart';

class PlaceList extends StatefulWidget {
  @override
  _PlaceListState createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  final List _places = [
    {'name': 'Hunza', 'where': 'Gilgit Baltistan'},
    {'name': 'Skardu', 'where': 'Gilgit Baltistan'},
    {'name': 'Murree', 'where': 'Gilgit Baltistan'},
    {'name': 'Murree', 'where': 'Gilgit Baltistan'},
    {'name': 'Murree', 'where': 'Gilgit Baltistan'},
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
                  'PLACES',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Color(0xff1bb273)),
                ),
              ),
            ),
            Container(
              child: new SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  sliver: new SliverFixedExtentList(
                    itemExtent: 260.0,
                    delegate: new SliverChildBuilderDelegate(
                        (builder, index) => _buildListItem(index),
                        childCount: _places.length),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              _places[index]['name'],
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffFFFFFF),
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaceDetails()),
                );
              },
              child: Container(
                child: Card(
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 40,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    child: Image(image: AssetImage('assets/images/7.jpg')),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff1bb273),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 7, bottom: 7, left: 7, right: 7),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          size: 21,
                          color: Color(0xffFFFFFF),
                        ),
                        Spacer(),
                        Text(
                          _places[index]['where'],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
