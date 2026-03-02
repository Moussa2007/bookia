import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/core/widgets/custom_txt_frm_field.dart';
import 'package:bookia/core/widgets/social_box.dart';
import 'package:bookia/features/forgot_password/forgot_password_view.dart';
import 'package:bookia/features/rgister/register_view.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passVisible = true;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back! Glad to see you, Again!',
                  style: AppTextStyles.heading,
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
                SizedBox(height: 15),
                CustomTextFormField(
                  mycontroller: passwordController,
                  icon: passVisible ? Icons.visibility_off : Icons.visibility,
                  hintText: "Enter your password",
                  inputType: TextInputType.text,
                  obsecure: passVisible,
                  onpressed: () {
                    setState(() {
                      passVisible = !passVisible;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        pushReplacement(context, ForgotPasswordView());
                      },
                      child: Text(
                        'Forgot password?',
                        style: AppTextStyles.bodySmallBlack,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                CustomButton(
                  bgColor: AppColors.primaryColor,
                  btnText: "Login",
                  txtColor: AppColors.backGroundColor,
                  onpressed: () {},
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Divider(
                        color: AppColors.borderColor,
                        thickness: 2,
                        endIndent: 20,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text('Or', style: AppTextStyles.bodyMediumBlack),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Divider(
                        color: AppColors.borderColor,
                        thickness: 2,
                        indent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: SocialBox(
                    img: "assets/images/google_ic.svg",
                    txt: "Logn with Google",
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: SocialBox(
                    img: "assets/images/cib_apple.svg",
                    txt: "Login with Apple",
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: AppTextStyles.bodySmallBlack,
                    ),
                    SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        pushReplacement(context, RegisterView());
                      },
                      child: Text(
                        "Register Now",
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
