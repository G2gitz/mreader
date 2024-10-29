import 'package:flutter/material.dart';
import 'package:mreader/components/colors.dart';

class Updatepage extends StatelessWidget {
  const Updatepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "UPDATES",
          style: TextStyle(color: white_color, fontSize: 20.0),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: white_color,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sort_sharp,
                color: white_color,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: white_color,
              ))
        ], //more //list
        backgroundColor: primary_color,
      ),
      backgroundColor: primary_color,
      // floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: secondary_color,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
