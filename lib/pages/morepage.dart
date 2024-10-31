// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mreader/components/colors.dart';

class Customizepage extends StatelessWidget {
  const Customizepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_color,
      // floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: secondary_color,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Center(
                  child: ClipOval(
                    child: Image.asset('lib/assets/images/logo.png'),
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: white_color,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: white_color, fontSize: 20.0),
                    ),
                    onTap: () {
                      print("settings tapped");
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: white_color,
                    ),
                    title: Text(
                      "About",
                      style: TextStyle(color: white_color, fontSize: 20.0),
                    ),
                    onTap: () {
                      print("About tapped");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
