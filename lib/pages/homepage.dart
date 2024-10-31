import 'package:flutter/material.dart';
import 'package:mreader/components/colors.dart';
import 'package:mreader/components/mynavbar.dart';
import 'package:mreader/pages/updatepage.dart';
import 'historypage.dart';
import 'home.dart';
import 'morepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final List<Widget> pages = [
    Home(),
    Updatepage(),
    Historypage(),
    Customizepage()
  ];
  final List<String> pageTitles = ["HOME", "UPDATE", "HISTORY", " "];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int newIndex = _pageController.page!.round();
      if (newIndex != _currentIndex) {
        setState(() {
          _currentIndex = newIndex;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex != 3
          ? AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                pageTitles[_currentIndex],
                style: TextStyle(color: white_color, fontSize: 20.0),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: white_color),
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 250,
                          color: white_color,
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.sort_sharp, color: white_color),
                ),
                PopupMenuButton<int>(
                  color: primary_color.withOpacity(0.7),
                  icon: Icon(Icons.more_vert, color: white_color),
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem<int>(
                        value: 1,
                        child: Text(
                          "Update All",
                          style: TextStyle(color: white_color),
                        ),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: Text(
                          "Open Random",
                          style: TextStyle(color: white_color),
                        ),
                      ),
                     
                    ];
                  },
                  onSelected: (value) {
                    // Handle menu item selection
                    switch (value) {
                      case 1:
                        // Action for Option 1
                        break;
                      case 2:
                        // Action for Option 2
                        break;
                    }
                  },
                )
              ],
              backgroundColor: primary_color,
            )
          : AppBar(
              // title: Text("More"),
              backgroundColor: primary_color,
            ),
      backgroundColor: primary_color,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: pages,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Mynavbar(
              pageController: _pageController,
              indexx: _currentIndex, // Pass the current index
            ),
          ),
        ],
      ),
    );
  }
}
