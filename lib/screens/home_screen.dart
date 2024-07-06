import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widget/card_header.dart';
import '../Widget/doctors_card.dart';
import '../Widget/our_services.dart';
import '../Widget/search_box.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const Navigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              _greetings(),
              const SizedBox(
                height: 16,
              ),
              const CardHeader(),
              const SizedBox(
                height: 20,
              ),
              const searchBox(),
              const SizedBox(
                height: 20,
              ),
              ourServices(),
              const SizedBox(
                height: 28,
              ),
              const doctors_cad()
            ],
          ),
        ),
      ),
    );
  }

  Padding _greetings() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Hallo Manusia!',
            style: GoogleFonts.manrope(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF3F3E3F)),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 24,
                icon: const Icon(
                  FeatherIcons.shoppingBag,
                  color: Color(0xFF818AF9),
                ),
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEF6497),
                    borderRadius: BorderRadius.circular(15 / 2),
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: GoogleFonts.mPlus1p(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Navigation extends StatelessWidget {
  const Navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 30,
            offset: const Offset(0, -10),
          )
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              iconSize: 34,
              color: const Color(0xFF656BB5),
              icon: const Icon(
                FeatherIcons.home,
              ),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 34,
              color: const Color(0xFFBFBFBF),
              icon: const Icon(FeatherIcons.heart),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 34,
              color: const Color(0xFFBFBFBF),
              icon: const Icon(FeatherIcons.messageCircle),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 34,
              color: const Color(0xFFBFBFBF),
              icon: const Icon(FeatherIcons.user),
            )
          ],
        ),
      ),
    );
  }
}
