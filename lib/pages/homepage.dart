import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mreader/components/colors.dart';
import 'package:mreader/pages/updatepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _index = 0;

  void updateindex(int index) {
    setState(() {
      _index = index;
    });
    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "HOME",
          style: TextStyle(color: white_color, fontSize: 20.0),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //navigation routing
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Updatepage()));
              },
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
      //custom navigation bar
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _index,
        height: 10,
        indicatorColor: secondary_color,
        unselectedItemColor: white_color,
        selectedItemColor: secondary_color,
        backgroundColor: primary_color,
        enableFloatingNavBar: true,
        onTap: (index) {
          updateindex(index);
        },
        items: [
          CrystalNavigationBarItem(
            icon: Icons.home,
            selectedColor: secondary_color,
          ),
          CrystalNavigationBarItem(
            icon: Icons.update,
            selectedColor: secondary_color,
          ),
          CrystalNavigationBarItem(
            icon: Icons.history,
            selectedColor: secondary_color,
          ),
          CrystalNavigationBarItem(
            icon: Icons.more_horiz,
            selectedColor: secondary_color,
          ),
        ],
      ),
    );
  }
}
