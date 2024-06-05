import 'package:flutter/material.dart';
import 'package:sokakhayvanlar/pages/hayvanlar/kediler/cat1.dart';
import 'package:sokakhayvanlar/pages/hayvanlar/kediler/cat2.dart';
import 'package:sokakhayvanlar/pages/hayvanlar/kediler/cat3.dart';

class kediler extends StatelessWidget {
  final List<String> imagePaths = [
    'lib/images/cat1.png',
    'lib/images/cat2.png',
    'lib/images/cat3.png',
  ];

  final List<Widget> pages = [
    cat1(),
    cat2(),
    cat3(),
  ];

  kediler({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.cyanAccent,
                  height: 200,
                  width: 150,
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
