import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:taxidriverapp/colors.dart';

class StartTripDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartTripDialogState();
}

class StartTripDialogState extends State<StartTripDialog>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
            scale: scaleAnimation,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Container(
                    padding: EdgeInsets.all(0.0),
                    height: 190.0,
                    // height:double.infinity,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 125),
                            ),
                            Container(
                                width: 61,
                                height: 61,
                                transform:
                                    Matrix4.translationValues(0.0, -30.0, 0.0),
                                decoration: new BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        MyColor.gradientEnd,
                                        MyColor.gradientStart
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
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
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 0),
                                      child: Text(
                                        '\$256',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                            fontFamily: 'GilroySemibold'),
                                      )),
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 100),
                            ),
                            Container(
                                width: 24,
                                height: 24,
                                transform:
                                    Matrix4.translationValues(0.0, -20.0, 0.0),
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
                                    child: Image.asset(
                                  'images/cross_white.png',
                                  width: 8,
                                  height: 8,
                                ))),
                          ],
                        ),
                        Text(
                          'Swipe right to start a trip',
                          style: TextStyle(
                              fontSize: 17,
                              color: MyColor.textBlueColor,
                              decoration: TextDecoration.none,
                              fontFamily: 'GilroySemibold'),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'images/loc_ty.png',
                              width: 8.7,
                              height: 12.3,
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'CG3-1606, Logix City Center,Sector 38, Noida',
                            style: TextStyle(
                                fontSize: 10,
                                color: MyColor.textSoft,
                                decoration: TextDecoration.none,
                                fontFamily: 'GilroySemibold'),
                          ),
                        ),
                        Padding(
                          //ctPadd
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, 25.0, 0.0),
                          child: Card(
                              elevation: 50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Container(
                                height: 40.3,
                                width: 135,
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Container(
                                          width: 31.7,
                                          height: 31.7,
                                          decoration: new BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                                  MyColor.gradientStart,
                                                  MyColor.gradientEnd
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter),
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
                                            'images/arrow_top.png',
                                            width: 14,
                                            height: 14,
                                          ))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 25),
                                      child: Text(
                                        'Swipe',
                                        style: TextStyle(
                                            color: MyColor.textSoft,
                                            fontFamily: 'GilroySemibold',
                                            fontSize: 12),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        'images/right_arrow.png',
                                        width: 19,
                                        height: 9,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    )),
              ),
            )),
      ),
    );
  }
}
