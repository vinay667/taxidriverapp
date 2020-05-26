import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:taxidriverapp/screens/car_information_screen.dart';
import 'package:taxidriverapp/screens/help_scrreen.dart';
import 'package:taxidriverapp/screens/invite_friends_screen.dart';
import 'package:taxidriverapp/screens/profile_screen.dart';
import 'package:taxidriverapp/screens/settings_screen.dart';

import '../colors/colors.dart';
import 'earning_details_screen.dart';
import 'nearbycustomers.dart';

class DriverHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DriverHomePage> {
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

  @override
  Widget build(BuildContext context) {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(devicePixelRatio: 2.5), 'images/car_icon.png')
        .then((onValue) {
      pinLocationIcon = onValue;
    });

    return Scaffold(
        drawer: Container(
          width: 210.3,
          child: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => ProfileScreen()));
                  },
                  child: Container(
                    height: 260.3,
                    child: DrawerHeader(
                      padding: EdgeInsets.zero,
                      child: Container(
                          child: Stack(
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              'images/navigation_curve.png',
                              fit: BoxFit.fill,
                              height: 215,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 20),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        height: 46.3,
                                        width: 46.3,
                                        margin: EdgeInsets.only(top: 10),
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                                fit: BoxFit.fill,
                                                image: new AssetImage(
                                                    "images/men_dp.png")))),
                                  ],
                                ),
                              ),
                              Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      left: 15, top: 20, right: 5),
                                  child: Text(
                                    'Max Angelica',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'GilroySemibold',
                                        color: Colors.white),
                                  )),
                              Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      left: 15, top: 7, right: 5),
                                  child: Text(
                                    'D123,Honda city',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'GilroySemibold',
                                        color: Colors.white),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 15, top: 5),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      'images/rating.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: 5, top: 5),
                                        child: Text(
                                          '4.5',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'GilroySemibold',
                                              color: Colors.white),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    'Car Information',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_createRouteCarInfo());

                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    'Earning Details',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => EarningDetailsScreen()));

                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    'Help',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {
                    /// Navigator.push(context, CupertinoPageRoute(builder: (context) => HelpScreen()));
                    Navigator.of(context).push(_createRoute());

                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    'Invite Friends',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => InviteScreen()));

                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 16,
                        color: MyColor.textBlueColor,
                        decoration: TextDecoration.none,
                        fontFamily: 'GilroySemibold'),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_createRouteSettings());

                    // Update the state of the app.
                    // ...
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Legal',
                        style: TextStyle(
                            fontSize: 12,
                            color: MyColor.textSoft,
                            decoration: TextDecoration.none,
                            fontFamily: 'GilroySemibold'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'V4.564.0001',
                        style: TextStyle(
                            fontSize: 12,
                            color: MyColor.textSoft,
                            decoration: TextDecoration.none,
                            fontFamily: 'GilroySemibold'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: Builder(
          builder: (ctx) => MaterialApp(
            home: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 60,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Scaffold.of(ctx).openDrawer();
                                },
                                child: Container(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Image.asset('images/hamber2.png',
                                        width: 20, height: 15)),
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Center(
                                  child: Container(
                                child: Text(
                                  'Hello! Max',
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
                                          image: new AssetImage(
                                              "images/men_dp.png")))),
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
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.centerRight,
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
                                          'images/search_icon.png',
                                          height: 20.3,
                                          width: 20.3,
                                        ))),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            NearByCustomers()),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: 15, top: 20),
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
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
                                              child: Text('Go',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily:
                                                          'GilroySemiBold',
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: MyColor
                                                          .pinkColorTheme)))),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, top: 15),
                                child: Card(
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Container(
                                      height: 65.0,
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: RaisedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          NearByCustomers()),
                                                );
                                              },
                                              textColor: Colors.white,
                                              padding:
                                                  const EdgeInsets.all(0.0),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0)),
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: <Color>[
                                                        MyColor.gradientStart,
                                                        MyColor.gradientEnd
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                50.0))),
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        35, 13, 35, 13),
                                                child: const Text('Available',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'GilroySemibold')),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 12),
                                            child: Text(
                                              'SWIPE FOR UNAVAILABLE',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.5),
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
                )),
          ),
        ));
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
        Marker(
            markerId: MarkerId('value2'),
            position: LatLng(45.5101, -122.7158),
            icon: pinLocationIcon),
        Marker(
            markerId: MarkerId('value2'),
            position: LatLng(45.5191, -122.5791),
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

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => HelpScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }

  Route _createRouteCarInfo() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CarInformationScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }

  Route _createRouteSettings() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SettingsScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
