import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar/theme/app_pallate.dart';
import 'package:slicing_parkcar/widgets/categories.widget.dart';
import 'package:slicing_parkcar/widgets/hero_widget.dart';
import 'package:slicing_parkcar/widgets/inprogress_widget.dart';
import 'package:slicing_parkcar/widgets/more.widget.dart';
import 'package:slicing_parkcar/widgets/nearby_parking.widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      bottomNavigationBar: bottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            Gap(20),
            InprogressWidget(),
            Gap(20),
            NearbyParkingWidget(),
            Gap(20),
            CategoriesWidget(),
            Gap(20),
            MoreWidget(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppPallate.white,
        selectedItemColor: AppPallate.colorPrimary,
        unselectedItemColor: AppPallate.colorGrey,
        showSelectedLabels: true,
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
            fontSize: 12, fontWeight: FontWeight.w500),
        items: [
          bottomNavigationBarItem(
              label: 'Discover', icon: 'assets/svgs/grid.svg'),
          bottomNavigationBarItem(
              label: 'Orders', icon: 'assets/svgs/orders.svg'),
          bottomNavigationBarItem(
              label: 'Wallet', icon: 'assets/svgs/wallet.svg'),
          bottomNavigationBarItem(
              label: 'Setting', icon: 'assets/svgs/setting.svg'),
        ],
      );

  BottomNavigationBarItem bottomNavigationBarItem({
    required String label,
    required String icon,
  }) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter:
            const ColorFilter.mode(AppPallate.colorGrey, BlendMode.srcIn),
      ),
      label: label,
      activeIcon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(
          AppPallate.colorPrimary,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
