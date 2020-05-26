import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taxidriverapp/widgets/custom_toolbar.dart';
import 'package:taxidriverapp/widgets/helpwidget.dart';

import '../colors/colors.dart';

class HelpScreen extends StatefulWidget {
  HelpScreenState createState() => HelpScreenState();
}

class HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CustomToolbar('Help', context),
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
                  child: HelpWidget('Trip Issue'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: HelpWidget('I Found an item.'),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
                  child: HelpWidget('Update Guide'),
                ),
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
