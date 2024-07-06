import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_pet/models/service_model.dart';

// var services = ["Vaccine", "Surgery", "SPA & Treatment", "Consultation"];
var selectedService = 0;

SizedBox ourServices() {
  return SizedBox(
    height: 36,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(bottom: 5),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: selectedService == index ? Colors.blue : Colors.white,
              )),
          child: ElevatedButton(
            onPressed: () {
              // ignore: avoid_print
              print("Selected Service $index");
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: selectedService == index
                  ? const Color(0xFF818AF9)
                  : const Color(0xFFF6F6F6),
            ),
            child: Text(
              Service.all()[index],
              style: GoogleFonts.manrope(
                color: selectedService == index
                    ? Colors.white
                    : const Color(0xFFCACACA).withOpacity(0.7),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        width: 10,
      ),
      itemCount: Service.all().length,
    ),
  );
}
