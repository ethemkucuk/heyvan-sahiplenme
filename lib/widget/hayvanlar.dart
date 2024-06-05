import 'package:flutter/material.dart';
import 'package:sokakhayvanlar/pages/hayvanlar/kopekler/dog1.dart';
import 'package:sokakhayvanlar/pages/hayvanlar/kopekler/dog2.dart';


class hayvanlar extends StatelessWidget {
  final List<String> imagePaths = [
    'lib/images/doberman.jpg',
    'lib/images/Labrador-retriever.jpg',
  ];

  final List<Widget> pages = [
    chowchow1(),
    Labrador(),
  ];

  hayvanlar({Key? key});

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
