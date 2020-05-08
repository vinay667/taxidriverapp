


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class EarningDetailsScreen extends StatefulWidget
{

  EarningDetailsState createState()=>EarningDetailsState();

}
class EarningDetailsState extends State<EarningDetailsScreen>
{
  List daysName = new List();



  @override
  Widget build(BuildContext context) {
    daysName.add('Today');
    daysName.add('Jan 26, 2019');
    return MaterialApp(
      home: Container(
         color: Colors.white,
        child: Column(
          children: <Widget>[

            Container(
                height: 60,
                width:double.infinity ,
                margin: EdgeInsets.only(top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    Expanded(
                      child:  Container(
                          padding: EdgeInsets.only(left: 0),
                          child: Image.asset('images/hamber2.png',
                              width: 20, height: 15)),

                      flex: 1,

                    ),
                    Expanded(
                      child: Center(
                          child: Container(
                            child: Text(
                              'Earning Details',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: MyColor.textBlueColor,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'GilroySemibold'),
                            ),



                          )
                      ),

                      flex:5,

                    ),
                    Expanded(
                      child: Container(

                          height: 34.3,
                          width: 34.3,
                          margin: EdgeInsets.only(right: 10),
                          decoration: new BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new AssetImage("images/men_dp.png")))),
                      flex: 1,


                    )



                  ],
                )),

            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 88.7,
                    child: Row(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
                                child: Image.asset(
                                  'images/curve_2_icon.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width:140,
                                  padding: EdgeInsets.only(left: 20,top: 20),
                                  child: Text(
                                    '\$1256 ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'GilroySemibold'),
                                  ),

                                ),


                                Container(
                                  width: 140,
                                  padding: EdgeInsets.only(left: 20,top: 5),
                                  child: Text(
                                    'Money earned',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'GilroySemibold'),
                                  ),

                                ),




                              ],


                            ),


                          ],


                        ),


                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                            child:  Image.asset('images/eearnings.png',width: 172,
                            ),
                          ),
                        ),




                      ],
                    ),
                  )),
            ),
            Expanded(
              child:ListView.builder(
                itemCount: 2,
                itemBuilder: (context, pos) {
                  return Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Column(
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
                                              'images/calender_icon.png',
                                              height: 13.3,
                                              width: 13.3,
                                            ))),


                                  ),


                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  daysName[pos],
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
                            EdgeInsets.only(left: 40, right: 15, top: 10),
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
                                          Padding(
                                            padding: EdgeInsets.only(top: 13, left: 10),
                                            child: Text(
                                              'Logix City Center - Sector 74, Noida..',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'GilroySemibold'),
                                            ),
                                          ),
                                          Container(
                                            width: 175,

                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              'Jan 27, 09:23 PM',
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
                                        padding: EdgeInsets.only( right: 15),
                                        child: Text(
                                          "\$ 32",
                                          style: TextStyle(
                                              fontSize:20,
                                              color: MyColor.pinkColorTheme,
                                              decoration: TextDecoration.none,
                                              fontFamily: 'GilroySemibold'),
                                        ),
                                      ),












                                    ],


                                  ),



                                )),
                          ),

                          Padding(
                            padding:
                            EdgeInsets.only(left: 40, right: 15, top: 5),
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
                                          Padding(
                                            padding: EdgeInsets.only(top: 13, left: 10),
                                            child: Text(
                                              'Logix City Center - Sector 74, Noida..',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'GilroySemibold'),
                                            ),
                                          ),
                                          Container(
                                            width: 175,

                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              'Jan 27, 09:23 PM',
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
                                        padding: EdgeInsets.only( right: 15),
                                        child: Text(
                                          "\$ 32",
                                          style: TextStyle(
                                              fontSize:20,
                                              color: MyColor.pinkColorTheme,
                                              decoration: TextDecoration.none,
                                              fontFamily: 'GilroySemibold'),
                                        ),
                                      ),












                                    ],


                                  ),



                                )),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: 40, right: 15, top: 5),
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
                                          Padding(
                                            padding: EdgeInsets.only(top: 13, left: 10),
                                            child: Text(
                                              'Logix City Center - Sector 74, Noida..',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'GilroySemibold'),
                                            ),
                                          ),
                                          Container(
                                            width: 175,

                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              'Jan 27, 09:23 PM',
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
                                        padding: EdgeInsets.only( right: 15),
                                        child: Text(
                                          "\$ 32",
                                          style: TextStyle(
                                              fontSize:20,
                                              color: MyColor.pinkColorTheme,
                                              decoration: TextDecoration.none,
                                              fontFamily: 'GilroySemibold'),
                                        ),
                                      ),












                                    ],


                                  ),



                                )),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: 40, right: 15, top: 5),
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
                                          Padding(
                                            padding: EdgeInsets.only(top: 13, left: 10),
                                            child: Text(
                                              'Logix City Center - Sector 74, Noida..',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'GilroySemibold'),
                                            ),
                                          ),
                                          Container(
                                            width: 175,

                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              'Jan 27, 09:23 PM',
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
                                        padding: EdgeInsets.only( right: 15),
                                        child: Text(
                                          "\$ 32",
                                          style: TextStyle(
                                              fontSize:20,
                                              color: MyColor.pinkColorTheme,
                                              decoration: TextDecoration.none,
                                              fontFamily: 'GilroySemibold'),
                                        ),
                                      ),












                                    ],


                                  ),



                                )),
                          ),
                          Padding(
                            padding:
                            EdgeInsets.only(left: 40, right: 15, top: 5),
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
                                          Padding(
                                            padding: EdgeInsets.only(top: 13, left: 10),
                                            child: Text(
                                              'Logix City Center - Sector 74, Noida..',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'GilroySemibold'),
                                            ),
                                          ),
                                          Container(
                                            width: 175,

                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              'Jan 27, 09:23 PM',
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
                                        padding: EdgeInsets.only( right: 15),
                                        child: Text(
                                          "\$ 32",
                                          style: TextStyle(
                                              fontSize:20,
                                              color: MyColor.pinkColorTheme,
                                              decoration: TextDecoration.none,
                                              fontFamily: 'GilroySemibold'),
                                        ),
                                      ),












                                    ],


                                  ),



                                )),
                          ),










                        ],



                      )
                  );
                },
              )
            )





















          ],


        ),



      )



    );


  }
}
