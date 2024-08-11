import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_parkcar/widgets/button_widget.dart';

class ContainerWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final String? actionText;
  final VoidCallback? onAction;

  const ContainerWidget({
    super.key,
    required this.title,
    required this.child,
    this.actionText,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //
        header(),
        const Gap(16),
        child,
        const SizedBox(),
      ],
    );
  }

  Widget header() {
    //
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Spacer(),
          if (actionText != null && onAction != null)
            ButtonWidget(
              text: actionText!,
              onTap: onAction!,
            )
        ],
      ),
    );
  }
}
