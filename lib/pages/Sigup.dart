import 'Anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child:
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //resim veya logo
              Container(alignment: Alignment.center,
                child: Image.asset("lib/images/dog-cat.png",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              //Hosgeldiniz
              Text("Merhaba Sizi Bekliyorduk",
                style: GoogleFonts.caveat(
                  fontSize: 35,
                )
              ),
              SizedBox(height: 15),
              //e-mail adres
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "E-mail adres"),
                ),
              ),
              SizedBox(height: 15),
              //şifre
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(

                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Şifre"),
                ),
              ),
              SizedBox(height: 15),
              //adres
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                      hintText: "Adres"),
                ),
              ),
              SizedBox(height: 15),
              //telefon
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "Telefon"),
                ),
              ),
              SizedBox(height: 15),
              //login buton
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa(),));
              },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  elevation: 20,
                  shadowColor: Colors.deepPurple[900],
                  minimumSize: Size.fromHeight(60),
                ),
                child: Text("Kayıt Ol"),
              ),
              SizedBox(height: 30),
              //uye misin
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Üye misin?"),
                  Text(" Şimdi giriş yap",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
