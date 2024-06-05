import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Sahiplen",
          style: GoogleFonts.cormorant(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView(
                  children: [
                    //resim
                    Image.asset("lib/images/orcun.jpeg",
                        height: 200,
                    ),
                    SizedBox(height: 20),
                    //ad
                    Text("Orcun",
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                    ),
                    SizedBox(height: 10),
                    Text("Ortalama Yaşam süresi:   25-55 yıl",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Ağırlık:   70 Kg",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Özelikleri",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                          "Spor yapar, Kokteyl yapar & agresif komplekli ama perdelerini kapatınca kedi gibi bir insan",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ),
          ),

      ],
      ),
    );
  }
}