import 'package:flutter/material.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adresimiz'),
      ),
      
      body: Center(
        child: Image(
          image: AssetImage('lib/images/google.jpg'),
          width: 600,
          height: 600,
        ),
      ),
    );
  }
}