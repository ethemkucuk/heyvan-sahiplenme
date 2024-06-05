import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sokakhayvanlar/pages/google_map.dart';

class Sahiplendin extends StatelessWidget {
  const Sahiplendin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title:Text(
        "Sahiplen",
        style: GoogleFonts.cormorant(
          fontSize: 25,
        ),
      ),
      centerTitle: true,
    ),



        backgroundColor: Colors.white,
        body:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [




              SizedBox(height: 25),
              Text("Artık Onunda Evi Var",
                style:GoogleFonts.aBeeZee(
                    fontSize: 20,
                ) ,
              ),
              SizedBox(height: 20),
              Text("İletim Bilgilerimiz: 545 000 00 00"),
              SizedBox(height: 20),
              Text("3 iş günü içerisinde barınağımıza \n"
                   "gelerek dostumuzu alabilirsiniz"
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoogleMap()),
                  );
                },
                child: Text('Adresimiz'),
              ),
            ],
          ),
        ),
    );
  }
}
