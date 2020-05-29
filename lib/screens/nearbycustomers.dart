import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart'
    show SystemChrome, SystemUiOverlayStyle, rootBundle;
import 'package:taxidriverapp/screens/driver_on_the_way_screen.dart';
import 'package:taxidriverapp/widgets/custom_marker_widget.dart';
import 'package:taxidriverapp/widgets/custom_toolbar.dart';
import '../colors/colors.dart';

class NearByCustomers extends StatefulWidget {
  @override
  NearByCustomersState createState() => NearByCustomersState();
}

class NearByCustomersState extends State<NearByCustomers> {
  String _mapStyle;
  BitmapDescriptor pinLocationIcon;
  GoogleMapController mapController;
  static String circleIdMain = 'circleID1';
  static String circleIdMain2 = 'circleID2';
  static String circleIdMain3 = 'circleID3';
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
  List<Marker> markersWidget = [];
  List<Customers> customerImages=[Customers('images/cust2.png',LatLng(45.5156, -122.7157),Colors.white),Customers('images/girl_dp.jpg',LatLng(45.5211, -122.6272),MyColor.pinkColorTheme),Customers('images/cust2.png',LatLng(45.4724, -122.6627),Colors.white)];
  @override
  Widget build(BuildContext context) {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(devicePixelRatio: 2.5), 'images/car_icon.png')
        .then((onValue) {
      pinLocationIcon = onValue;
    });

    MarkerGenerator(getAllMarkerWidgets(), (bitmaps) {
      setState(() {
        markersWidget = mapBitmapsToMarker(bitmaps);
      });
    }).generate(context);



    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          CustomToolbar('Customers', context),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        transform: Matrix4.translationValues(
                                            0.0, -15.0, 0.0),
                                        height: 39,
                                        width: 39,
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
                                  transform: Matrix4.translationValues(
                                      0.0, -20.0, 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 150,
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Mary Grace',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: MyColor.textBlueColor,
                                              decoration: TextDecoration.none,
                                              fontFamily: 'GilroySemibold'),
                                        ),
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
                                      Image.asset(
                                        'images/rating.png',
                                        width: 12,
                                        height: 12,
                                      ),
                                      Expanded(
                                          child: Align(
                                        alignment: Alignment.topRight,
                                        child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  CupertinoPageRoute(
                                                      builder: (context) =>
                                                          DriverOnTheWayScreen()));
                                            },
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 20),
                                              child: Container(
                                                  width: 47.3,
                                                  height: 47,
                                                  decoration: new BoxDecoration(
                                                    gradient: LinearGradient(
                                                        colors: [
                                                          MyColor.gradientStart,
                                                          MyColor.gradientEnd
                                                        ],
                                                        begin: Alignment
                                                            .centerLeft,
                                                        end: Alignment
                                                            .centerRight),
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
                                                    'images/check_icon.png',
                                                    height: 12.3,
                                                    width: 18.3,
                                                  ))),




                                            )),
                                      ))
                                    ],
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -20.0, 0.0),
                                  padding: EdgeInsets.only(left: 15, right: 50),
                                  child: Text('3 KM, 15 min away ',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                          decoration: TextDecoration.none,
                                          fontFamily: 'GilroySemibold')),
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -20.0, 0.0),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 15, bottom: 11),
                                          child: Image.asset(
                                            'images/loc_ty.png',
                                            height: 12.3,
                                            width: 8.7,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                        ),
                                        Flexible(
                                            child: Text(
                                                'CG3-1606, Supertech Capetown , Sector 74,Noida, Uttar Pradesh, 201301',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.4),
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontFamily:
                                                        'GilroySemibold'))),
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
                                    ))
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
    ));
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(_mapStyle);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }



  Widget _getMarkerWidget(String imagePath,Color borderColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          height: 39,
          width: 39,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                color: borderColor,
                width: 2.0,
              ),
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage(
                      imagePath)))),
    );
  }



  List<Marker> mapBitmapsToMarker(List<Uint8List> bitmaps) {
    List<Marker> markersList = [];
    bitmaps.asMap().forEach((i, bmp) {
      final customer = customerImages[i];
      markers.add(Marker(
          markerId: MarkerId(customer.imagePath+i.toString()),
          position: customer.position,
          icon: BitmapDescriptor.fromBytes(bmp)));
    });
    markers.addAll([
      Marker(
          markerId: MarkerId('value'),
          position: LatLng(45.521563, -122.677433),
          icon: pinLocationIcon),
    ]);
    return markersList;
  }


List<Widget> getAllMarkerWidgets()
{
  return customerImages.map((c)=>_getMarkerWidget(c.imagePath,c.borderColor)).toList();
}

}
class Customers {
  final String imagePath;
  final LatLng position;
  final Color borderColor;
  Customers(this.imagePath, this.position,this.borderColor);
}