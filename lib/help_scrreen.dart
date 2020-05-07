import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class HelpScreen extends StatefulWidget {
  HelpScreenState createState() => HelpScreenState();
}

class HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                color: Colors.white,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(bottom: 15),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 15),
                          child: Image.asset('images/hamber2.png',
                              width: 25, height: 25)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 120),
                      child: Text(
                        'Help',
                        style: TextStyle(
                            fontSize: 18,
                            color: MyColor.textBlueColor,
                            decoration: TextDecoration.none,
                            fontFamily: 'GilroySemibold'),
                      ),
                    ),
                    Container(
                        height: 39,
                        width: 37,
                        margin: EdgeInsets.only(left: 110, top: 10),
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage("images/men_dp.png")))),
                  ],
                )),
            Flexible(
                child: ListView(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 0, left: 15),
                  child: Text(
                    'Good Evening, How can I help?',
                    style: TextStyle(
                        fontSize: 18,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummytext ever since the 1500s.',
                    style: TextStyle(
                        fontSize: 12,
                        color: MyColor.textSoft,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroyLight'),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text(
                    'Driver App Basic',
                    style: TextStyle(
                        fontSize: 14,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 217.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'images/taxi_banner.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                          height: 217.3,
                          child: Center(
                            child: Container(
                                width: 55.7,
                                height: 55.7,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.pinkColorTheme,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 8.0,
                                        offset: Offset(1.0, 1.0),
                                        spreadRadius: 0.0)
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset('images/play_icon.png',
                                      width: 25, height: 29.3),
                                )),
                          ))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 30, left: 15),
                  child: Text(
                    'Some other Topic',
                    style: TextStyle(
                        fontSize: 14,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        height: 44.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Trip Issue',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: MyColor.textBlueColor,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'GilroySemibold'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Container(
                                  width: 27.3,
                                  height: 27.3,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.pinkColorTheme,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 8.0,
                                          offset: Offset(1.0, 1.0),
                                          spreadRadius: 0.0)
                                    ],
                                  ),
                                  child: Center(
                                    child: Image.asset('images/right_ab.png',
                                        width: 5, height: 9),
                                  )),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        height: 44.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'I Found an item.',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: MyColor.textBlueColor,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'GilroySemibold'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Container(
                                  width: 27.3,
                                  height: 27.3,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.gradientEnd,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 8.0,
                                          offset: Offset(1.0, 1.0),
                                          spreadRadius: 0.0)
                                    ],
                                  ),
                                  child: Center(
                                    child: Image.asset('images/right_ab.png',
                                        width: 5, height: 9),
                                  )),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
                  child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        height: 44.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'Update Guide',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: MyColor.textBlueColor,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'GilroySemibold'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Container(
                                  width: 27.3,
                                  height: 27.3,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.gradientEnd,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 8.0,
                                          offset: Offset(1.0, 1.0),
                                          spreadRadius: 0.0)
                                    ],
                                  ),
                                  child: Center(
                                    child: Image.asset('images/right_ab.png',
                                        width: 5, height: 9),
                                  )),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
