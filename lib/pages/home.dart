import 'package:flutter/material.dart';
import 'package:sokakhayvanlar/pages/Login.dart';
import 'package:sokakhayvanlar/pages/Sigup.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {

    runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(alignment: Alignment.center,
              child: Image.asset("lib/images/kapak.png",
              width: 500,
              height: 200,
              fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Koşulsuz Sevgi",
                style: GoogleFonts.caveat(
                  fontSize: 50,
                ),
                ),
                Text("Sahiplen ",
                  style: GoogleFonts.caveat(
                    fontSize: 50,
                  ),
                ),
              ],
            ),


            
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                ), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                }, child: const Text("Giriş")),
                SizedBox(width: 10,),
                ElevatedButton(style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                ), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                }, child: const Text("Kayıt Ol")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
