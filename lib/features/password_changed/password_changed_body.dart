import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/features/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordChangedBody extends StatelessWidget {
  const PasswordChangedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: SvgPicture.asset('assets/images/successmark.svg'),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text('Password changed', style: AppTextStyles.heading),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                "Your password has been changed successfully.",
                style: AppTextStyles.bodyMediumBlack.copyWith(
                  color: AppColors.darkGrey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          CustomButton(
            bgColor: AppColors.primaryColor,
            btnText: "Back to login",
            txtColor: AppColors.backGroundColor,
            onpressed: () {
              pushReplacement(context, LoginView());
            },
          ),
        ],
      ),
    );
  }
}
