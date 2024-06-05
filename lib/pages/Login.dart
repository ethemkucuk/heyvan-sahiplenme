import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Anasayfa.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
void signUserIn() {}

class _LoginPageState extends State<LoginPage> {


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
              Text("Hoşgeldiniz",
                style: GoogleFonts.caveat(
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 25),
              //e-mail adres
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "E-mail adresi Girin"),
                ),
              ),
              SizedBox(height: 25),
              //şifre
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(

                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Şifre Girin"),
                ),
              ),
              SizedBox(height: 10),
              //şifreni mi unuttun
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Şifreni mi Unuttun?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
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
                child: Text("GiriS"),
              ),
              SizedBox(height: 30),
              //kaydol
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Üye değil misin?"),
                  Text(" Şimdi üye ol",
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
