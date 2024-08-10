import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar/theme/app_pallate.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      content(),
      image(),
      search(),
    ]);
  }

  Container content() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 76, bottom: 54),
      color: AppPallate.primaryDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/angga.png'),
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              //
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppPallate.colorTextSecondary,
                    ),
                  ),
                  const Gap(2),
                  Text(
                    'Angga Risky',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        color: AppPallate.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          const Gap(21),
          Text(
            'Get Your\nSecure Park',
            style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                color: AppPallate.white,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Widget image() {
    return Positioned(
      width: 160,
      bottom: 54,
      right: 0,
      child: Image.asset(
        'assets/images/hero.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget search() {
    return Positioned(
        left: 0,
        bottom: 0,
        right: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            cursorColor: AppPallate.colorPrimary,
            decoration: InputDecoration(
                hintStyle: GoogleFonts.plusJakartaSans(fontSize: 16),
                focusColor: AppPallate.white,
                filled: true,
                hintText: 'Search by name or city area',
                focusedBorder: border(),
                enabledBorder: border(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 14)),
          ),
        ));
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
    );
  }
}
