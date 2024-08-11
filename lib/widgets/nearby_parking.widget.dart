import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar/models/park.dart';
import 'package:slicing_parkcar/theme/app_pallate.dart';
import 'package:slicing_parkcar/widgets/container_widget.dart';
import 'package:slicing_parkcar/widgets/stats_widget.dart';

class NearbyParkingWidget extends StatelessWidget {
  const NearbyParkingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Nearby\nParking Spots',
      onAction: () {},
      actionText: 'View All',
      child: SizedBox(
        height: 200,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (BuildContext context, int index) {
            return NearbyParkingItem(
              park: parks[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(16);
          },
          itemCount: parks.length,
        ),
      ),
    );
  }
}

class NearbyParkingItem extends StatelessWidget {
  final Park park;
  const NearbyParkingItem({
    super.key,
    required this.park,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallate.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          const Gap(10),
          content(),
        ],
      ),
    );
  }

  Column content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          park.title,
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppPallate.colorTextPrimary,
          ),
        ),
        const Gap(8),
        SizedBox(
          width: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StatsWidget(
                icon: 'assets/svgs/routing.svg',
                text: park.distance,
              ),
              StatsWidget(
                icon: 'assets/svgs/dollar.svg',
                text: park.price,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container image() {
    return Container(
      alignment: Alignment.topLeft,
      width: 170,
      height: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(
            14,
          ),
          image: DecorationImage(
            image: AssetImage(
              park.image,
            ),
            fit: BoxFit.cover,
          )),
      child: park.type != null && park.typeText != null
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: park.type == parkType.discount
                    ? AppPallate.colorPink
                    : AppPallate.colorPrimary,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                park.typeText!.toUpperCase(),
                style: GoogleFonts.plusJakartaSans(
                  color: AppPallate.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                ),
              ),
            )
          : null,
    );
  }
}
