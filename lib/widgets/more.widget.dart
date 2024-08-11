import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:slicing_parkcar/models/park.dart';
import 'package:slicing_parkcar/theme/app_pallate.dart';
import 'package:slicing_parkcar/widgets/container_widget.dart';
import 'package:slicing_parkcar/widgets/stats_widget.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Fresh Lot\nMore Discounts',
      onAction: () {},
      actionText: 'View All',
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 24,
        ),
        itemBuilder: (BuildContext context, int index) {
          return MoreItem(
            park: freshLot[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(16);
        },
        itemCount: freshLot.length,
      ),
    );
  }
}

class MoreItem extends StatelessWidget {
  final Park park;
  const MoreItem({
    super.key,
    required this.park,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: AppPallate.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 100,
              height: 76,
              decoration: BoxDecoration(
                color: AppPallate.colorGrey,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    park.image,
                  ),
                ),
              )),
          const Gap(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                park.title,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatsWidget(
                      icon: 'assets/svgs/routing.svg', text: park.distance),
                  const Gap(4),
                  StatsWidget(icon: 'assets/svgs/dollar.svg', text: park.price),
                ],
              ),
              const Gap(8),
              Row(
                children: [
                  RatingStars(
                    valueLabelVisibility: false,
                    starSpacing: 2,
                    starSize: 18,
                    value: park.ratingStar ?? 0,
                    starColor: AppPallate.colorOrange,
                    starOffColor: AppPallate.colorDisabled,
                    starBuilder: (index, color) {
                      return SvgPicture.asset(
                        'assets/svgs/star.svg',
                        colorFilter: ColorFilter.mode(
                          color!,
                          BlendMode.srcIn,
                        ),
                      );
                    },
                  ),
                  const Gap(2),
                  Text(
                    NumberFormat(("(##,###)")).format(park.ratingCount ?? 0),
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppPallate.colorPrimary,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
