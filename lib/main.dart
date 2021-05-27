import 'package:flutter/material.dart';
import 'package:portofolio_yunus/ui/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NotoSansJp'),
      home: SplashPage(),
    );
  }
}
