import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar/theme/app_pallate.dart';
import 'package:slicing_parkcar/widgets/button_widget.dart';
import 'package:slicing_parkcar/widgets/container_widget.dart';

class InprogressWidget extends StatelessWidget {
  const InprogressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'In Progress Parking to',
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
            color: AppPallate.colorPrimary,
            borderRadius: BorderRadius.circular(
              16,
            ),
            image: const DecorationImage(
                image: AssetImage('assets/images/bg_in_progress.png'),
                fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: AppPallate.colorPrimary.withOpacity(.4),
                  blurRadius: 24,
                  offset: Offset(0, 10))
            ]),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/svgs/grid.svg',
              height: 26,
              width: 26,
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Angga Tower',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppPallate.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Lot 193MB',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppPallate.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const Spacer(),
            ButtonWidget(
              text: 'Open Maps',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
