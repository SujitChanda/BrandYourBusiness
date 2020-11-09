import 'package:brand_our_business/Screens/home_screen.dart';
import 'package:brand_our_business/Screens/splash_screen.dart';
import 'package:brand_our_business/utility/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: SplashScreen()
    );
  }
}
