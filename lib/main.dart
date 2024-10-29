import 'package:flutter/material.dart';
import 'package:splashify/splashify.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Splashify(
        imagePath: 'lib/assets/images/mask.png',
        title: "MReader",
        navigateDuration: 3,
        colorizeTitleAnimation: true,
        child: Homepage(),
        ),
        
    );
  }
}