import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar/theme/app_pallate.dart';

class StatsWidget extends StatelessWidget {
  final String icon;
  final String text;
  const StatsWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          height: 16,
          width: 16,
          colorFilter: const ColorFilter.mode(
            AppPallate.colorGrey,
            BlendMode.srcIn,
          ),
        ),
        const Gap(4),
        Text(
          text,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppPallate.colorGrey,
          ),
        ),
      ],
    );
  }
}
