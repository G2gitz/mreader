import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mreader/components/colors.dart';

class Historypage extends StatefulWidget {
  const Historypage({super.key});

  @override
  State<Historypage> createState() => _HistorypageState();
}

String getCurrentDate() {
  return DateFormat('MMMM dd').format(DateTime.now());
}

class _HistorypageState extends State<Historypage> {
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
    return Scaffold(
      backgroundColor: primary_color,
      // floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: secondary_color,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: imagePaths.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: white_color.withAlpha(100),
                                  width: 0.4)),
                          child: ListTile(
                            leading: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: primary_color.withOpacity(0.7),
                                  image: DecorationImage(
                                      image: AssetImage(imagePaths[index]),
                                      fit: BoxFit.cover)),
                            ),
                            title: Text(
                              "Hello",
                              style:
                                  TextStyle(color: white_color, fontSize: 15.0),
                            ),
                            subtitle: Text(
                              getCurrentDate(),
                              style: TextStyle(
                                  color: white_color.withOpacity(0.7)),
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
