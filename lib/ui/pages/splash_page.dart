import 'package:flutter/material.dart';
import 'dart:async';
import 'package:portofolio_yunus/theme.dart';
import 'package:portofolio_yunus/ui/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), () => Navigator.of(context)
        .pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => HomePage())
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('lib/assets/images/splash_logo.png', width: 200, height: 200,),
            Container(
              margin: EdgeInsets.only(top: 70, bottom: 16),
              child: Text('Welcome,', style: titleTextStyle,),
            ),
            Text('I will tell you more about me!', style: subTitleTextStyle, textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}