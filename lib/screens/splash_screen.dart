import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Bake 'n Cake ",
                style: GoogleFonts.aBeeZee(color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
