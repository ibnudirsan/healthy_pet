import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 12,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: 40,
            ),
            const SizedBox(
              height: 73,
            ),
            RichText(
              text: TextSpan(
                text: "Helping you \nto keep ",
                style: GoogleFonts.manrope(
                  color: const Color(0xFFDEE1FE),
                  fontSize: 24,
                  letterSpacing: 3.5 / 100,
                  height: 152 / 100,
                ),
                children: const [
                  TextSpan(
                    text: "your bestie",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                  TextSpan(text: "\nstay healthy!"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
