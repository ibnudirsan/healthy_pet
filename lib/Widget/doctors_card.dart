import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/docter_model.dart';

class doctors_cad extends StatelessWidget {
  const doctors_cad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => _doctor(doctors[index]),
      separatorBuilder: (context, index) => const SizedBox(
        height: 11,
      ),
      itemCount: doctors.length,
    );
  }

  Container _doctor(DocterModel doctor) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF35385A).withOpacity(0.7),
              blurRadius: 30,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/images/${doctor.image}',
                height: 103,
                width: 88,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    style: GoogleFonts.manrope(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3F3E3F),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Services : ${doctor.services.join(", ")}",
                        style: GoogleFonts.manrope(
                          color: Colors.black,
                          fontSize: 12,
                        )),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const Icon(
                        FeatherIcons.mapPin,
                        color: Color(0xFF818AF9),
                        size: 14,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "${doctor.distance} km",
                        style: GoogleFonts.manrope(
                          fontSize: 12,
                          color: const Color(0xFF818AF9),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Available for',
                        style: GoogleFonts.manrope(
                          fontSize: 12,
                          color: const Color(0xFF50CC98),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/svgs/cat.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/svgs/dog.svg'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
