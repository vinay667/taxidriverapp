

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class SettingsScreen extends StatefulWidget
{
  SettingsState createState()=>SettingsState();
}

class SettingsState extends State<SettingsScreen>
{
  @override
  Widget build(BuildContext context) {

    bool notificationSwitch=false;
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
                      padding: EdgeInsets.only(top: 15, left: 100),
                      child: Text(
                        'Settings',
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
                        margin: EdgeInsets.only(left: 100, top: 10),
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage("images/men_dp.png")))),
                  ],
                )),

            Expanded(
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.only(left:15),
                        child:Container(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child:Container(
                                width: 29.7,
                                height: 29.7,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 8.0,
                                        offset:
                                        Offset(1.0, 1.0),
                                        spreadRadius: 0.0)
                                  ],
                                ),
                                child: Center(
                                    child: Image.asset(
                                      'images/privacy.png',
                                      height: 14.3,
                                      width: 12.0,
                                    ))),


                          ),


                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Privacy Settings',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'GilroySemibold'),
                        ),

                      ),


                    ],



                  ),

                  Padding(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 14),
                    child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(

                          height: 54.7,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width:175,
                                    padding: EdgeInsets.only(top: 13, left: 10),
                                    child: Text(
                                      'Location',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),
                                    ),
                                  ),
                                  Container(
                                    width: 175,

                                    padding: EdgeInsets.only(top: 5,left: 10),
                                    child: Text(
                                      'Last Update: Jan 27, 09:23 PM',
                                      style: TextStyle(
                                          color: MyColor.textSoft,
                                          fontSize: 10,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),

                                    ),
                                  ),

                                ],


                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child:  Container(
                                    width: 27,
                                    height: 27,
                                    decoration: new BoxDecoration(
                                      color: MyColor.pinkColorTheme,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 8.0,
                                            offset:
                                            Offset(1.0, 1.0),
                                            spreadRadius: 0.0)
                                      ],
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                          'images/right_arrow_3.png',
                                          height: 9,
                                          width: 5,
                                        ))),


                              ),








                            ],


                          ),



                        )),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(

                          height: 54.7,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 175,
                                    padding: EdgeInsets.only(top: 13, left: 10),
                                    child: Text(
                                      'Content',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),
                                    ),
                                  ),
                                  Container(
                                    width: 175,

                                    padding: EdgeInsets.only(top: 5,left: 10),
                                    child: Text(
                                      'Last Update: Jan 27, 09:23 PM',
                                      style: TextStyle(
                                          color: MyColor.textSoft,
                                          fontSize: 10,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),

                                    ),
                                  ),

                                ],


                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child:  Container(
                                    width: 27,
                                    height: 27,
                                    decoration: new BoxDecoration(
                                      color: MyColor.pinkColorTheme,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 8.0,
                                            offset:
                                            Offset(1.0, 1.0),
                                            spreadRadius: 0.0)
                                      ],
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                          'images/right_arrow_3.png',
                                          height: 9,
                                          width: 5,
                                        ))),


                              ),








                            ],


                          ),



                        )),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(

                          height: 54.7,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width:174,
                                    padding: EdgeInsets.only(top: 13, left: 10),
                                    child: Text(
                                      'Notification',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),
                                    ),
                                  ),
                                  Container(
                                    width: 175,

                                    padding: EdgeInsets.only(top: 5,left: 10),
                                    child: Text(
                                      'Control Application Notifications',
                                      style: TextStyle(
                                          color: MyColor.textSoft,
                                          fontSize: 9,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),

                                    ),
                                  ),

                                ],


                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 6),
                                child:Switch(
                                value: notificationSwitch,
                                onChanged: (value) {
                                  setState(() {
                                    notificationSwitch = value;
                                    print(notificationSwitch);
                                  });
                                },
                                activeTrackColor: MyColor.textSoft,
                                activeColor: MyColor.pinkColorTheme,
                                  inactiveThumbColor: MyColor.pinkColorTheme,


                              ),

                              ),





                            ],


                          ),



                        )),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 25),
                  ),




                  Row(
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.only(left:15),
                        child:Container(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child:Container(
                                width: 29.7,
                                height: 29.7,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 8.0,
                                        offset:
                                        Offset(1.0, 1.0),
                                        spreadRadius: 0.0)
                                  ],
                                ),
                                child: Center(
                                    child: Image.asset(
                                      'images/map_pointer.png',
                                      height: 13,
                                      width: 13,
                                    ))),


                          ),


                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Navigation Settings',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'GilroySemibold'),
                        ),

                      ),


                    ],



                  ),

                  Padding(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(

                          height: 54.7,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width:175,
                                    padding: EdgeInsets.only(top: 13, left: 10),
                                    child: Text(
                                      'Google Maps',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),
                                    ),
                                  ),
                                  Container(
                                    width: 175,

                                    padding: EdgeInsets.only(top: 5,left:10),
                                    child: Text(
                                      'Launches in a saparate App',
                                      style: TextStyle(
                                          color: MyColor.textSoft,
                                          fontSize: 9,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),

                                    ),
                                  ),

                                ],


                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child:  Container(
                                    width: 27,
                                    height: 27,
                                    decoration: new BoxDecoration(
                                      color: MyColor.pinkColorTheme,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 8.0,
                                            offset:
                                            Offset(1.0, 1.0),
                                            spreadRadius: 0.0)
                                      ],
                                    ),
                                    child: Center(
                                        child: Image.asset(
                                          'images/right_arrow_3.png',
                                          height: 9,
                                          width: 5,
                                        ))),


                              ),








                            ],


                          ),



                        )),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(

                          height: 54.7,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width:174,
                                    padding: EdgeInsets.only(top: 13, left: 10),
                                    child: Text(
                                      'Auto-navigate',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),
                                    ),
                                  ),
                                  Container(
                                    width: 175,

                                    padding: EdgeInsets.only(top: 5,left:10),
                                    child: Text(
                                      'Start every trip in turn-by-turn mode',
                                      style: TextStyle(
                                          color: MyColor.textSoft,
                                          fontSize: 9,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),

                                    ),
                                  ),

                                ],


                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 6),
                                child:Switch(
                                  value: notificationSwitch,
                                  onChanged: (value) {
                                    setState(() {
                                      notificationSwitch = value;
                                      print(notificationSwitch);
                                    });
                                  },
                                  activeTrackColor: MyColor.textSoft,
                                  activeColor: MyColor.pinkColorTheme,
                                  inactiveThumbColor: MyColor.pinkColorTheme,


                                ),

                              ),








                            ],


                          ),



                        )),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(

                          height: 54.7,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    width: 175,
                                    padding: EdgeInsets.only(top: 13, left: 10),
                                    child: Text(
                                      'Night Mode',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),
                                    ),
                                  ),
                                  Container(
                                    width: 175,

                                    padding: EdgeInsets.only(top: 5,left: 10),
                                    child: Text(
                                      'Automatic',
                                      style: TextStyle(
                                          color: MyColor.textSoft,
                                          fontSize: 9,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold'),

                                    ),
                                  ),

                                ],


                              ),

                              Padding(
                                padding: EdgeInsets.only(right: 6),
                                child:Switch(
                                  value: notificationSwitch,
                                  onChanged: (value) {
                                    setState(() {
                                      notificationSwitch = value;
                                      print(notificationSwitch);
                                    });
                                  },
                                  activeTrackColor: MyColor.textSoft,
                                  activeColor: MyColor.pinkColorTheme,
                                  inactiveThumbColor: MyColor.pinkColorTheme,


                                ),

                              ),








                            ],


                          ),



                        )),
                  ),



                  Padding(
                    padding: EdgeInsets.only(top: 25),
                  ),

                  Row(
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.only(left:15),
                        child:Container(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child:Container(
                                width: 29.7,
                                height: 29.7,
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 8.0,
                                        offset:
                                        Offset(1.0, 1.0),
                                        spreadRadius: 0.0)
                                  ],
                                ),
                                child: Center(
                                    child: Image.asset(
                                      'images/delete_ic.png',
                                      color: MyColor.pinkColorTheme,
                                      height: 14.3,
                                      width: 12.0,
                                    ))),


                          ),


                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Delete Account',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'GilroySemibold'),
                        ),

                      ),


                    ],



                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),



                ],


              ),


            )









          ],


        ),


      ),


    );








  }
}

