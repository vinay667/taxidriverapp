
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors/colors.dart';
import 'screens/home.dart';

void main(){
  runApp( MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: MyColor.pinkColorTheme
    ));
    return MaterialApp(
      home: DriverHomePage(),
      routes: {
        '/home': (BuildContext context) => DriverHomePage(),

      },
    );
  }

}



