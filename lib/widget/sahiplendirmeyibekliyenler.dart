import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sokakhayvanlar/pages/Slider/PageOne.dart';
import 'package:sokakhayvanlar/pages/Slider/PageTwo.dart';
import 'package:sokakhayvanlar/pages/Slider/PageThree.dart';
import 'package:sokakhayvanlar/pages/Slider/PageFour.dart';

class SahiplendirmeyiBekliyenler extends StatelessWidget {
  final List<String> imagePaths = [
    'lib/images/australian-shepherd-3.jpg',
    'lib/images/ethem.png',
    'lib/images/corgi-2.jpg',
    'lib/images/orcun.jpeg',
  ];

  final List<Widget> pages = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, itemIndex, pageViewIndex) {
          String imagePath = imagePaths[itemIndex % imagePaths.length];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pages[itemIndex % pages.length],
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 300,
                width: 200,
                color: Colors.cyanAccent,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          viewportFraction: 0.55,
          enlargeCenterPage: true,
          pageSnapping: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(seconds: 1),
        ),
      ),
    );
  }
}
