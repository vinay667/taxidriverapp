

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class ProfileScreen extends StatefulWidget{

  ProfileState createState()=>ProfileState();
}

class ProfileState extends State<ProfileScreen>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Stack(
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
                                  'Profile',
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

                Container(
                  padding: EdgeInsets.only(left: 100),
                  height: 196,

                  child:Stack(
                    children: <Widget>[
                      Image.asset('images/curve_profile_final.png'),
                      Padding(
                        padding: EdgeInsets.only(top: 45, left: 40),
                        child: Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                              fontFamily: 'GilroySemibold'),
                        ),
                      ),


                    ],


                  )



                ),

                Container(
                  padding: EdgeInsets.only(left: 110,top: 70),
                  height: 185,
                   width:214.4,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 115,
                          width: 115,
                          margin: EdgeInsets.only(top: 10),
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                  new AssetImage("images/men_dp.png")))),

                      Padding(
                        padding: EdgeInsets.only(right: 7),
                        child:Align(
                          alignment: Alignment.bottomRight,
                          child:Container(
                              width: 27,
                              height: 27,

                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColor.green,
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
                                  child: Image.asset('images/edit.png',height: 15,width: 13,))),


                        ) ,



                      )




                    ],


                  ),



                )






              ],


            ),



            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 25, left: 17),
              child: Text(
                'Name:',
                style: TextStyle(
                    fontSize: 15,
                    color: MyColor.textBlueColor,
                    decoration: TextDecoration.none,
                    fontFamily: 'GilroySemibold'),
              ),
            ),

         Padding(
           padding: EdgeInsets.only(left: 15,right: 15,top: 5),
           child:  Container(
             child: Padding(
               padding: EdgeInsets.only(top: 16,left: 10),
               child: Text(
                 'Max Angelica',
                 style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 11,decoration: TextDecoration.none,fontFamily: 'GilroySemibold'),
               ),


             ),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               border: Border.all(color: Colors.black54,width: 0.2),
               color: Colors.white,
             ),
             height: 50,
           ),




         ),

            Container(

              padding: EdgeInsets.only(top: 20, left: 17),
              child: Text(
                'Phone No:',
                style: TextStyle(
                    fontSize: 15,
                    color: MyColor.textBlueColor,
                    decoration: TextDecoration.none,
                    fontFamily: 'GilroySemibold'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 5),
              child:  Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 16,left: 10),
                  child: Text(
                    '+91 8976543212',
                    style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 11,decoration: TextDecoration.none,fontFamily: 'GilroySemibold'),
                  ),


                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54,width: 0.2),
                  color: Colors.white,
                ),
                height: 50,
              ),




            ),


            Container(

              padding: EdgeInsets.only(top: 20, left: 17),
              child: Text(
                'Email Id:',
                style: TextStyle(
                    fontSize: 15,
                    color: MyColor.textBlueColor,
                    decoration: TextDecoration.none,
                    fontFamily: 'GilroySemibold'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 5),
              child:  Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 16,left: 10),
                  child: Text(
                    'Max_angelica@gamil.com',
                    style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 11,decoration: TextDecoration.none,fontFamily: 'GilroySemibold'),
                  ),


                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54,width: 0.2),
                  color: Colors.white,
                ),
                height: 50,
              ),




            ),

            Container(

              padding: EdgeInsets.only(top: 20, left: 17),
              child: Text(
                'Username:',
                style: TextStyle(
                    fontSize: 15,
                    color: MyColor.textBlueColor,
                    decoration: TextDecoration.none,
                    fontFamily: 'GilroySemibold'),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 5),
              child:  Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 16,left: 10),
                  child: Text(
                    'Max3569',
                    style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 11,decoration: TextDecoration.none,fontFamily: 'GilroySemibold'),
                  ),


                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54,width: 0.2),
                  color: Colors.white,
                ),
                height: 50,
              ),




            ),

            /*gradient: LinearGradient(
              colors: <Color>[
                MyColor.gradientStart,
                MyColor.gradientEnd
              ],
            ),
            */

            Padding(
              padding: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 15),
              child:

              Card(
                  elevation:5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0,left: 0),
                      child: Center(
                        child: Text(
                          'Save Changes',
                          style: TextStyle(color: Colors.white,fontSize: 14,decoration: TextDecoration.none,fontFamily: 'GilroySemibold'),
                        ),


                      ),


                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: <Color>[
                          MyColor.gradientStart,
                          MyColor.gradientEnd
                        ],
                      ),
                      color: Colors.white,
                    ),
                    height: 50,
                  ),),








            ),




















          ],



        ),


      )

    );


  }
}

