import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/landing_page.dart';
import 'util/size_config.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sethwbarton',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}

/*
* Text: 0xff000000
* Selected: 0xffe3cda4
* background:0xffffffff
* background-dark:0xff1c1c1c
* background-dark-light: 0xff1c1c1c
* error:0xffd25252
*
* */
