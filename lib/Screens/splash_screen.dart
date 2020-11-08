import 'dart:async';
import 'package:brand_our_business/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 2;

  @override
  void initState() {
    super.initState();

     _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.srcOver),
              image: AssetImage("assets/banner.jpg"), fit: BoxFit.cover)),
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).padding.top,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset("assets/logo.png"),
              )),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("We Will Help You Find",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline3.copyWith(
                          color: Colors.white,
                        )),
                SizedBox(height:40),
                Text(
                  "HOTEL & RESORT",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
