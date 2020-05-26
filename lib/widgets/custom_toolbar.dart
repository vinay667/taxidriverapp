import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taxidriverapp/colors/colors.dart';

class CustomToolbar extends StatelessWidget {
  CustomToolbar(this.text, this.screenContextt);
  final String text;
  final BuildContext screenContextt;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(screenContextt, true);
                },
                child: Container(
                    padding: EdgeInsets.all(15),
                    child: Image.asset('images/back_icon.png',
                        width: 14, height: 15)),
              ),
              flex: 1,
            ),
            Expanded(
              child: Center(
                  child: Container(
                child: Text(
                  text,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 18,
                      color: MyColor.textBlueColor,
                      decoration: TextDecoration.none,
                      fontFamily: 'GilroySemibold'),
                ),
              )),
              flex: 5,
            ),
            Expanded(
              child: Container(
                  height: 40.3,
                  width: 25.3,
                  margin: EdgeInsets.only(right: 10),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new AssetImage("images/men_dp.png")))),
              flex: 1,
            )
          ],
        ));
  }
}
