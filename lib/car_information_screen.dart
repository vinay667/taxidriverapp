
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class CarInformationScreen extends StatefulWidget
{
  CarInfoState createState()=>CarInfoState();
}

class CarInfoState extends State<CarInformationScreen>
{
  @override
  Widget build(BuildContext context) {

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
                                'Car Information',
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
                 padding: EdgeInsets.only(top: 3),
               ),

              Expanded(
                child: ListView(
                  padding:EdgeInsets.zero,
                   children: <Widget>[

                     Container(
                       padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                       child: Card(
                           elevation: 8,
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20)),
                           child: Container(
                             width: double.infinity,
                            height: 204,
                            child: Column(
                              children: <Widget>[
                               Container(

                                 child: Row(
                                   children: <Widget>[
                                      Container(
                                        width: 233,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              width:double.infinity,
                                              padding: EdgeInsets.only(top: 15, left: 12),
                                              child: Text(
                                                'DL45 L2 7456',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: MyColor.textBlueColor,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: 'GilroySemibold'),
                                              ),
                                            ),
                                            Container(
                                              width:double.infinity,
                                              padding: EdgeInsets.only(left: 12,top: 3),
                                              child: Text(
                                                'Honda City 2.0',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: MyColor.greyDark,
                                                    decoration: TextDecoration.none,
                                                    fontFamily: 'GilroySemibold'),
                                              ),
                                            ),




                                            Padding(
                                              padding: EdgeInsets.only(top:5),

                                            ),
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.only(left: 12),
                                                  child: Image.asset('images/loc_ty.png',width: 8.7,height: 12.3,),
                                                ),

                                               Flexible(
                                                 child:  Padding(
                                                   padding: EdgeInsets.only(top: 5,left: 15,right: 5),
                                                   child: Text(
                                                     'CG3-1606, Supertech Capetown,Sector 71,Noida,Uttar Pradesh',
                                                     style: TextStyle(
                                                         fontSize: 10,
                                                         color: Colors.black.withOpacity(0.7),
                                                         decoration: TextDecoration.none,
                                                         fontFamily: 'GilroySemibold'),
                                                   ),
                                                 ),



                                               ),








                                                //ocation child



                                              ],


                                            ),







                                          ],


                                        ),


                                      ),

                                     Stack(

                                       children: <Widget>[

                                         Image.asset('images/ellipse.png',width: 88.3,height: 87,),

                                         Padding(
                                           padding: EdgeInsets.only(left: 45,top: 12),
                                           child:Container(
                                               width: 29.7,
                                               height: 29.7,

                                               decoration: new BoxDecoration(
                                                 shape: BoxShape.circle,
                                                 color: Colors.white,
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
                                                   child: Image.asset('images/nib.png',height: 13.7,width: 13.7,))),

                                         )






                                       ],

                                     )





                                   ],



                                 ),


                               ),





                                Padding(padding: EdgeInsets.only(top: 5)
                                  ,
                                ),

                                Row(
                                  children: <Widget>[
                                   Container(
                                     width: 180,
                                     child: Column(
                                       children: <Widget>[


                                         Row(
                                           children: <Widget>[
                                             Padding(
                                               padding: EdgeInsets.only(left: 12),
                                               child: Image.asset('images/dl_icon.png',width: 14.7,height: 11.7,),
                                             ),

                                             Padding(
                                               padding: EdgeInsets.only(left: 7,right: 5),
                                               child: Text(
                                                 'DL-24567459635129',
                                                 style: TextStyle(
                                                     fontSize: 11,
                                                     color: Colors.black.withOpacity(0.7),
                                                     decoration: TextDecoration.none,
                                                     fontFamily: 'GilroySemibold'),
                                               ),
                                             ),








                                             //ocation child



                                           ],


                                         ),


                                         Padding(
                                           padding: EdgeInsets.only(top: 12),
                                         ),



                                         Row(
                                           children: <Widget>[
                                             Padding(
                                               padding: EdgeInsets.only(left: 12),
                                               child: Image.asset('images/dl_icon.png',width: 14.7,height: 11.7,),
                                             ),

                                             Padding(
                                               padding: EdgeInsets.only(left: 7,right: 5),
                                               child: Text(
                                                 'AR543G78',
                                                 style: TextStyle(
                                                     fontSize: 11,
                                                     color: Colors.black.withOpacity(0.7),
                                                     decoration: TextDecoration.none,
                                                     fontFamily: 'GilroySemibold'),
                                               ),
                                             ),

                                           ],

                                         ),


                                         Padding(
                                           padding: EdgeInsets.only(top: 12),
                                         ),

                                         Row(
                                           children: <Widget>[
                                             Padding(
                                               padding: EdgeInsets.only(left: 12),
                                               child: Image.asset('images/staring.png',width: 13,height: 13,),
                                             ),

                                             Padding(
                                               padding: EdgeInsets.only(left: 7,right: 5),
                                               child: Text(
                                                 'Blue & White',
                                                 style: TextStyle(
                                                     fontSize: 11,
                                                     color: Colors.black.withOpacity(0.7),
                                                     decoration: TextDecoration.none,
                                                     fontFamily: 'GilroySemibold'),
                                               ),
                                             ),








                                             //ocation child



                                           ],


                                         ),
                                       ],



                                     ),
                                   ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 15,right: 15,top: 5),
                                      child:  Container(
                                        width:106,






                                        child:Padding(
                                          padding: EdgeInsets.only(top: 10,bottom: 10),
                                          child: Image.asset('images/dl_image.jpg',height: 64.3,width:102),


                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16.7),
                                          border: Border.all(color: MyColor.pinkColorTheme,width: 1),
                                          color: Colors.white,
                                        ),
                                        height: 82,
                                      ),




                                    ),

















                                  ],




                                ),






                              ],

                            ),






                           )),
                     ),


                 Container(
         width: double.infinity,
         padding: EdgeInsets.only(left: 15,right: 15,top: 20),
        child:  DottedBorder(
          color: Colors.black.withOpacity(0.4),
          strokeWidth: 0.9,
          borderType: BorderType.RRect,
          radius: Radius.circular(8.3),
          padding: EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.3)),
            child: Container(
              height: 140.7,
              child:Stack(
                children: <Widget>[
                  Center(
                    child:Image.asset('images/signature.png',height: 72.3,width: 189.7,),
                  ),


                  Align(
                    alignment: Alignment.topRight,
                 child: Padding(
                   padding: EdgeInsets.only(top: 10,right: 10),
                   child:Container(
                       width: 29.7,
                       height: 29.7,

                       decoration: new BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               color: Colors.black26,
                               blurRadius: 8.0,
                               offset:
                               Offset(1.0, 1.0),
                               spreadRadius: 2.0)
                         ],
                       ),
                       child: Center(
                           child: Image.asset('images/nib.png',height: 13.7,width: 13.7,))),

                 ),

                  ),












                ],


              )










            ),
          ),
        ),

       ),



             Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 15),

             child:Stack(
               children: <Widget>[

                 ClipRRect(
                   borderRadius: BorderRadius.circular(8.0),
                   child: Image.asset('images/car_black.png',
                    fit: BoxFit.fill,
                     height: 170,
                   ),
                 ),

                 Align(
                   alignment: Alignment.topRight,
                   child:   Padding(
                     padding: EdgeInsets.only(right: 10,top: 10),
                     child:Container(
                         width: 29.7,
                         height: 29.7,

                         decoration: new BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.white,
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
                             child: Image.asset('images/gallery.png',height: 12,width: 12,))),

                   ),



                 )






               ],





             )


             ),

                Padding(
                  padding: EdgeInsets.only(top: 50),


                )














                   ],


                ),


              )








            ],



          ),



      ),






    );




  }
}





















