import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class searchBox extends StatelessWidget {
  const searchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        autocorrect: false,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(FeatherIcons.search, color: Color(0xFFADACAD)),
          hintText: 'Find best vaccinate, treatment...',
          hintStyle: GoogleFonts.manrope(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFCACACA),
            height: 150 / 100,
          ),
        ),
      ),
    );
  }
}
