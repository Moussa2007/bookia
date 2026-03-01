import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/core/widgets/logo.dart';
import 'package:flutter/material.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bookia.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Positioned(top: 135, left: 83, child: Logo()),
          Positioned(
            top: 229,
            left: 85,
            child: SizedBox(
              width: 218,
              height: 25,
              child: Text(
                'Order your book now!',
                style: AppTextStyles.bodyMediumBlack,
              ),
            ),
          ),
          Positioned(
            top: 591,
            left: 17,
            child: CustomButton(
              bgColor: AppColors.primaryColor,
              btnText: "Login",
              txtColor: AppColors.backGroundColor,
              onpressed: () {},
            ),
          ),
          Positioned(
            top: 662,
            left: 17,
            child: CustomButton(
              bgColor: AppColors.backGroundColor,
              btnText: "Register",
              txtColor: AppColors.darkGrey,
              onpressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
