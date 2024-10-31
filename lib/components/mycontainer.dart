import 'package:flutter/material.dart';
import 'package:mreader/components/colors.dart';

class MyContainer extends StatefulWidget {
   final String imagePath;
  const MyContainer({super.key, required this.imagePath});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.fill)),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 45.0,
            width: MediaQuery.of(context).size.width,
            color: primary_color.withOpacity(0.4),
            child: Text(
              "Title",
              style: TextStyle(color: white_color, fontSize: 20.0),
            ),
          ),
        ),
        //favourite functionality
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
              onPressed: () {
                setState(() {
                  isFavourite = !isFavourite;
                });
              },
              icon: Icon(
                isFavourite ? Icons.favorite : Icons.favorite_border,
                size: 25.0,
                color: isFavourite ? Colors.red : white_color,
              )),
        )
      ],
    );
  }
}
