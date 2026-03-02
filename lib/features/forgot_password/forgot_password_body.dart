import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/core/widgets/custom_txt_frm_field.dart';
import 'package:bookia/features/login/login_view.dart';
import 'package:bookia/features/otp_verification/otp_verification_view.dart';
import 'package:flutter/material.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({super.key});

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text('Forgot Password?', style: AppTextStyles.heading),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
                    style: AppTextStyles.bodyMediumBlack.copyWith(
                      color: AppColors.darkGrey,
                      fontSize: 16,
                    ),
                  ),
                ),

                SizedBox(height: 30),

                CustomTextFormField(
                  mycontroller: emailController,
                  icon: Icons.email,
                  hintText: "Enter your email",
                  inputType: TextInputType.emailAddress,
                  obsecure: false,
                  onpressed: () {},
                ),
                SizedBox(height: 30),

                CustomButton(
                  bgColor: AppColors.primaryColor,
                  btnText: "Send code",
                  txtColor: AppColors.backGroundColor,
                  onpressed: () {
                    pushReplacement(context, OtpVerificationView());
                  },
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Remember password?",
                      style: AppTextStyles.bodySmallBlack,
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        pushReplacement(context, LoginView());
                      },
                      child: Text(
                        "Login Now",
                        style: AppTextStyles.bodySmallBlack.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
