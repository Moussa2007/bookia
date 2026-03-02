import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialBox extends StatelessWidget {
  const SocialBox({super.key, required this.img, required this.txt});

  final String img;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor, width: 3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(img),
          SizedBox(width: 10),
          Text(txt, style: AppTextStyles.bodyMediumBlack),
        ],
      ),
    );
  }
}
