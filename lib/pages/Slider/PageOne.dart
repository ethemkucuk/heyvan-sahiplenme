import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key});

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
                    Image.asset("lib/images/australian-shepherd-3.jpg",
                        height: 200,
                    ),
                    SizedBox(height: 20),
                    //ad
                    Text("Australian Shepherd",
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                    ),
                    SizedBox(height: 10),
                    Text("Ortalama Yaşam süresi:   12-15 yıl",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Ağırlık:   19-33 Kg",
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
                        "Avustralya Çoban Köpeği yani daha yaygın olarak bilinen adıyla Australian Shepherd, enerjik yapısı, zeki hali ve güzellikleriyle tanınır. Bu ırk, enerjik yapısı ve zeki doğası ile bilinir. Özellikle sürü çalışmalarında kullanılmaları nedeniyle, bu köpekler hareketli bir yaşam tarzına ihtiyaç duyarlar. Aynı zamanda Australian Shepherd ırkı renkli tüyleri ve eşsiz göz renkleriyle de tanınırlar."
                          "Aktif ve zeki olan bu köpekler, aynı zamanda oldukça eğitilebilirdir. Ancak, bu enerjik doğaları onları şehir yaşamı için zor bir seçenek haline getirebilir. Özellikle geniş bir bahçede yaşamayı tercih ederler. Sahiplerine karşı son derece sadıktırlar ve genellikle aile bireyleriyle de iyi anlaşırlar.",
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