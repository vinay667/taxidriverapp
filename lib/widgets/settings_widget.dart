

import 'package:flutter/material.dart';
import 'package:taxidriverapp/colors/colors.dart';

class SettingsWidget extends StatelessWidget
{
  SettingsWidget(this.title,this.subtitle);
final String title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
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
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          decoration: TextDecoration.none,
                          fontFamily: 'GilroySemibold'),
                    ),
                  ),
                  Container(
                    width: 175,
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      subtitle,
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
                child: Container(
                    width: 27,
                    height: 27,
                    decoration: new BoxDecoration(
                      color: MyColor.pinkColorTheme,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(1.0, 1.0),
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
        ));



  }
}