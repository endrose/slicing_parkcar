import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar/models/category.dart';
import 'package:slicing_parkcar/theme/app_pallate.dart';
import 'package:slicing_parkcar/widgets/container_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWidget(
      title: 'Browse\nCategories',
      onAction: () {},
      actionText: 'View All',
      child: SizedBox(
        height: 110,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (BuildContext context, int index) {
            return CategoriesItem(
              category: categories[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(16);
          },
          itemCount: categories.length,
        ),
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  final Category category;
  const CategoriesItem({
    super.key,
    required this.category,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            category.icon,
            width: 50,
            height: 50,
          ),
          const Gap(8),
          Text(
            category.name,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
