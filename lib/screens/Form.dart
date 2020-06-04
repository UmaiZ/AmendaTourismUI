import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = new MaskedTextController(mask: '00000-0000000-0');
    double statusBarHeight = MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    DateTime selectedDate = DateTime.now();
    TextEditingController _date = new TextEditingController();

    Future<Null> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2020, 1),
          lastDate: DateTime(2030));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
          _date.value = TextEditingValue(text: picked.toString());
        });
    }

    return Expanded(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: statusBarHeight * 2),
        width: width * 0.7,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  width: double.infinity,
                  child: Text('Trip Form',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xff1bb273),
                          fontSize: 30,
                          fontFamily: 'Cabin'))),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width * 0.7,
                child: Stack(
                  children: <Widget>[
                    Container(
                      color: Color(0xffABEBC6),
                      width: MediaQuery.of(context).size.width,
                      height: 4,
                    ),
                    Container(
                      color: Color(0xff1bb273),
                      width: MediaQuery.of(context).size.width *
                          0.2, // here you can define your percentage of progress, 0.2 = 20%, 0.3 = 30 % .....
                      height: 4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  width: double.infinity,
                  child: Text('Your Name',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold))),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                width: width * 0.7,
                child: TextField(
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(3),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(
                          color: Colors.grey[800], fontFamily: 'Quicksand'),
                      hintText: "Your Name",
                      fillColor: Color(0xffF0F3F4)),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  width: double.infinity,
                  child: Text(
                    'Your Number',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                width: width * 0.7,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(3),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(
                          color: Colors.grey[800], fontFamily: 'Quicksand'),
                      hintText: "Phone Number",
                      fillColor: Color(0xffF0F3F4)),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  width: double.infinity,
                  child: Text(
                    'Plan Date',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: Container(
                    width: width * 0.7,
                    child: TextField(
                      controller: _date,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff1bb273), width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff1bb273), width: 1.5),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(3),
                          ),
                        ),
                        hintText: 'Date you want to go',
                        fillColor: Color(0xffF0F3F4),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: Colors.grey[800], fontFamily: 'Quicksand'),
                        prefixIcon: Icon(Icons.calendar_today,
                            color: Color(0xff1bb273)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  width: double.infinity,
                  child: Text(
                    'Members with you',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                width: width * 0.7,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(3),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(
                          color: Colors.grey[800], fontFamily: 'Quicksand'),
                      hintText: "Members with you",
                      fillColor: Color(0xffF0F3F4)),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                  margin: EdgeInsets.only(left: width * 0.05),
                  width: double.infinity,
                  child: Text(
                    'Your CNIC',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                width: width * 0.7,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: controller,
                  decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff1bb273), width: 1.5),
                      ),
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(3),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(
                          color: Colors.grey[800], fontFamily: 'Quicksand'),
                      hintText: "CNIC Number",
                      fillColor: Color(0xffF0F3F4)),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.1,
                width: width * 0.6,
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
                        "SUBMIT",
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
            ],
          ),
        ),
      ),
    );
  }
}
