import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:taxidriverapp/widgets/custom_marker_widget_single.dart';
import 'package:taxidriverapp/widgets/custom_toolbar.dart';
import 'package:maps_curved_line/maps_curved_line.dart';
import '../colors/colors.dart';
import '../dialog/driver_start_trip_dialog.dart';
class DriverOnTheWayScreen extends StatefulWidget {
  @override
  DriverOnTheWayScreenState createState() => DriverOnTheWayScreenState();
}

class DriverOnTheWayScreenState extends State<DriverOnTheWayScreen> {
  String _mapStyle;
  List<Marker> markersWidget = [];
  final Set<Polyline> _polylines = Set();
  final LatLng _point1 = LatLng(45.5586, -122.7609);
  final LatLng _point2 = LatLng(45.681910, -122.580340);
  BitmapDescriptor pinLocationIcon;
  GoogleMapController mapController;
  static String circleIdMain = 'circleID1';
  static String circleIdMain2 = 'circleID2';
  static String circleIdMain3 = 'circleID3';
  Set<Marker> markers = Set();
  Set<Circle> circles = Set.from([
    Circle(
        circleId: CircleId(circleIdMain3),
        center: LatLng(45.681910, -122.580340),
        radius: 400,
        fillColor: MyColor.textBlueColor,
        strokeColor: MyColor.textBlueColor,
        strokeWidth: 1),

  ]);

  List<String> carNames = <String>['Car Pool', 'Car Go', 'Sadan', 'Sadan X'];
  List<String> imagesList = <String>[
    'images/car_1.png',
    'images/car_2.png',
    'images/car_1.png',
    'images/car_1.png'
  ];
  final LatLng _center = const LatLng(45.521563, -122.677433);
  @override
  Widget build(BuildContext context) {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(devicePixelRatio: 2.5), 'images/car_icon_map.png')
        .then((onValue) {
      pinLocationIcon = onValue;
    });

    MarkerGeneratorSingle(_getSourceWidget(), (bitmaps) {
      setState(() {
        markersWidget = mapBitmapsToMarkers(bitmaps);
      });
    }).generate(context);


    MarkerGeneratorSingle(_getDestinationWidget(), (bitmaps) {
      setState(() {
        markersWidget = mapBitmapsToMarker(bitmaps);
      });
    }).generate(context);
    _polylines.add(Polyline(
      polylineId: PolylineId("line 1"),
      visible: true,
      width: 2,
      //latlng is List<LatLng>
      patterns: [PatternItem.dash(20), PatternItem.gap(10)],
      points: MapsCurvedLines.getPointsOnCurve(_point1, _point2),
      // Invoke lib to get curved line points
      color: MyColor.pinkColorTheme,
    ));
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          CustomToolbar('On the way', context),
          Expanded(
              child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 10.0,
                  ),
                  markers: markers,
                  circles: circles,
                  polylines: _polylines,
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
                                              showDialog(
                                                context: context,
                                                builder: (_) =>
                                                    StartTripDialog(),
                                              );
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
                                                      child: Column(
                                                    children: <Widget>[
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 7),
                                                          child: Text(
                                                            '3.5',
                                                            style: TextStyle(
                                                                fontSize: 17,
                                                                color: Colors
                                                                    .white,
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                fontFamily:
                                                                    'GilroySemibold'),
                                                          )),
                                                      Text(
                                                        'Km',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.white,
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            fontFamily:
                                                                'GilroySemibold'),
                                                      )
                                                    ],
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

  List<Marker> mapBitmapsToMarkers(List<Uint8List> bitmaps) {
    List<Marker> markersList = [];
    bitmaps.asMap().forEach((i, bmp) {
      markers.add(Marker(
          markerId: MarkerId('source'),
          position: _point1,
          icon: BitmapDescriptor.fromBytes(bmp)));
    });
    return markersList;
  }


  List<Marker> mapBitmapsToMarker(List<Uint8List> bitmaps) {
    List<Marker> markersList = [];
    bitmaps.asMap().forEach((i, bmp) {
      markers.add(Marker(
          markerId: MarkerId('destination'),
          position: _point2,
          icon: BitmapDescriptor.fromBytes(bmp)));
    });

    markers.addAll([
      Marker(
          markerId: MarkerId('value'),
          position: _point1,
          icon: pinLocationIcon),
    ]);
    return markersList;
  }
  Widget _getSourceWidget() {
    return Container(
      padding: EdgeInsets.only(right: 30,bottom: 50),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1.5),
          width: 32,
          height: 32,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            border: new Border.all(
              color: MyColor.blueMap,
              width: 4.0,
            ),
            color: Colors.white,

          ),
          child: Center(
              child:   Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets
                        .only(
                      top: 3,
                    ),
                    child: Text('15',
                        style: TextStyle(
                            fontSize:
                            9,
                            color: MyColor
                                .blueMap,
                            fontFamily:
                            'GilroySemibold')),
                  ),
                  Container(
                    transform: Matrix4
                        .translationValues(
                        0.0,
                        -2.0,
                        0.0),
                    padding: EdgeInsets
                        .only(
                        left: 0),
                    child: Text(
                        'Mins',
                        style: TextStyle(
                            fontSize:
                            6,
                            color: MyColor
                                .greyMap,
                            fontFamily:
                            'GilroySemibold')),
                  )
                ],
              )

          )),
    );
  }

  Widget _getDestinationWidget() {
    return Container(
      padding: EdgeInsets.only(left: 30),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1.5),
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
                      'images/girl_dp.jpg')))),
    );
  }
}
