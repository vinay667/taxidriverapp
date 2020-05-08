import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle, rootBundle;
import 'package:taxidriverapp/driver_on_the_way_screen.dart';

import 'colors.dart';

class NearByCustomers extends StatefulWidget {
  @override
  NearByCustomersState createState() => NearByCustomersState();
}

class NearByCustomersState extends State<NearByCustomers> {
  String _mapStyle;
  BitmapDescriptor pinLocationIcon;
  GoogleMapController mapController;
  static String circleIdMain = 'shdtfdtfwdt';
  static String circleIdMain2 = 'ssdiuhfigaf';
  static String circleIdMain3 = 'ssdiueffhfigaf';
  Set<Marker> markers = Set();
  Set<Circle> circles = Set.from([
    Circle(
        circleId: CircleId(circleIdMain3),
        center: LatLng(45.521563, -122.677433),
        radius: 1200,
        fillColor: MyColor.pinkColorTheme.withOpacity(0.2),
        strokeColor: MyColor.pinkColorTheme,
        strokeWidth: 1),
    Circle(
        circleId: CircleId(circleIdMain),
        center: LatLng(45.521563, -122.677433),
        radius: 4000,
        fillColor: MyColor.pinkColorTheme.withOpacity(0.2),
        strokeColor: MyColor.pinkColorTheme.withOpacity(0.4),
        strokeWidth: 1),
    Circle(
        circleId: CircleId(circleIdMain2),
        center: LatLng(45.521563, -122.677433),
        radius: 200,
        fillColor: MyColor.pinkColorTheme,
        strokeColor: MyColor.pinkColorTheme,
        strokeWidth: 1),
  ]);
  final LatLng _center = const LatLng(45.521563, -122.677433);

  @override
  Widget build(BuildContext context) {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(devicePixelRatio: 2.5), 'images/car_icon.png')
        .then((onValue) {
      pinLocationIcon = onValue;
    });

    return MaterialApp(
      home: Column(
        children: <Widget>[
          Container(
              color: Colors.white,
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
                            'Customers',
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
          Expanded(
              child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                  markers: markers,
                  circles: circles,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    //Code for container


                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            height: 146.3,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        transform: Matrix4.translationValues(0.0, -15.0, 0.0),
                                        height: 39,
                                        width: 37,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: new Border.all(
                                              color: MyColor.pinkColorTheme,
                                              width: 2.0,
                                            ),
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: new AssetImage(
                                                    "images/girl_dp.jpg")))),
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(0.0, -20.0, 0.0),



                                  child:Row(
                                    children: <Widget>[
                                      Container(
                                          padding:
                                          EdgeInsets.only(left: 15, right: 5),
                                          child: Text(
                                            'Mary Grace',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: MyColor.textBlueColor,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'GilroySemibold'),
                                          )),
                                      Image.asset(
                                        'images/rating.png',
                                        width: 12,
                                        height: 12,
                                      ),
                                      Image.asset(
                                        'images/rating.png',
                                        width: 12,
                                        height: 12,
                                      ),
                                      Image.asset(
                                        'images/rating.png',
                                        width: 12,
                                        height: 12,
                                      ),
                                      Image.asset(
                                        'images/rating.png',
                                        width: 12,
                                        height: 12,
                                      ),
                                      Image.asset(
                                        'images/rating.png',
                                        width: 12,
                                        height: 12,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 80),
                                      ),
                                     GestureDetector(
                                       onTap: (){
                                         Navigator.push(context, CupertinoPageRoute(builder: (context) => DriverOnTheWayScreen()));


                                       },

                                       child: Container(
                                           width: 47.3,
                                           height: 47,
                                           decoration: new BoxDecoration(
                                             gradient: LinearGradient(
                                                 colors: [
                                                   MyColor.gradientStart,
                                                   MyColor.gradientEnd
                                                 ],
                                                 begin: Alignment.centerLeft,
                                                 end: Alignment.centerRight),
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
                                                 'images/check_icon.png',
                                                 height: 12.3,
                                                 width: 18.3,
                                               ))),




                                     ),
                                    ],
                                  ),


                                ),
                                Container(
                                  transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15, top: 0),
                                  child: Text('3 KM, 15 min away',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold')),
                                ),
                                Container(
                                    transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                                  child:Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                        EdgeInsets.only(left: 15, bottom: 11),
                                        child: Image.asset(
                                          'images/loc_ty.png',
                                          height: 12.3,
                                          width: 8.7,
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                      ),

//CG3-1606, Supertech Capetown, Sector 74,Noida, Uttar Pradesh, 201301
                                      Flexible(

                                        ///padding: EdgeInsets.only(left: 5,right:100),
                                          child: Text(
                                              'CG3-1606, Supertech Capetown , Sector 74,Noida, Uttar Pradesh, 201301',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black
                                                      .withOpacity(0.4),
                                                  decoration: TextDecoration.none,
                                                  fontFamily: 'GilroySemibold'))),

                                      Container(
                                          width: 47.3,
                                          height: 47,
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
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
                                                'images/cross_pink.png',
                                                height: 14.3,
                                                width: 14.3,
                                              ))),

                                      Padding(
                                        padding: EdgeInsets.only(right: 17),
                                      ),
                                    ],
                                  )

                                )
                              ],
                            ),
                          )),
                    ),



                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Container(
                            height: 65.0,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    padding: const EdgeInsets.all(0.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: <Color>[
                                              MyColor.gradientStart,
                                              MyColor.gradientEnd
                                            ],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.0))),
                                      padding: const EdgeInsets.fromLTRB(
                                          35, 13, 35, 13),
                                      child: const Text('Available',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'GilroySemibold')),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: Text(
                                    'SWIPE FOR UNAVAILABLE',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontFamily: 'GilroySemibold',
                                        fontSize: 10),
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
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(_mapStyle);
    setState(() {
      markers.addAll([
        Marker(
            markerId: MarkerId('value'),
            position: LatLng(45.521563, -122.677433),
            icon: pinLocationIcon),
      ]);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }
}
