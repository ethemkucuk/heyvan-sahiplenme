import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sokakhayvanlar/widget/mama_destegi.dart';
import '../widget/hayvanlar.dart';
import '../widget/kediler.dart';
import '../widget/sahiplendirmeyibekliyenler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Text(
          "Satın Alma Sahiplen",
          style: GoogleFonts.cormorant(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
        body:
        SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sahiplenilenler",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 16),
              SahiplendirmeyiBekliyenler(),
              const SizedBox(height: 24),
              Text("Köpekler",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              hayvanlar(),
              const SizedBox(height: 24),
              Text("Kediler",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              kediler(),
              SizedBox(height: 8),
              Text("Mama Bankası",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              mama_destegi()
            ],
          ),
        ),
        ),
    );
  }
}

