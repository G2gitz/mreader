import 'package:flutter/material.dart';

import '../components/colors.dart';
import '../components/mycontainer.dart';
import '../components/mynavbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagePaths = [
    'lib/assets/mangasimg/gojo.jpeg',
    'lib/assets/mangasimg/img1.jpeg',
    'lib/assets/mangasimg/pegal.jpeg',
    'lib/assets/mangasimg/img2.jpeg',
    'lib/assets/mangasimg/img3.jpg',
    'lib/assets/mangasimg/img4.jpg',
    // Add more image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: primary_color,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        print("library");
                      },
                      child: Text(
                        "Library",
                        style: TextStyle(color: white_color, fontSize: 25.0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("Favorite");
                      },
                      child: Text(
                        "Favorites",
                        style: TextStyle(color: white_color, fontSize: 25.0),
                      ),
                    ),
                  ],
                ),
                height: 45,
                width: 350,
              ),
              Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.65,
                        crossAxisCount: 2,
                      ),
                      itemCount: imagePaths.length,
                      physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: MyContainer(
                                  imagePath: imagePaths[index],
                                ),
                                ),
                                );
                      },
                      ),
                      )
            ],
          ),
        ],
      ),
    );
  }
}
