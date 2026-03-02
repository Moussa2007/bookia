import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/core/widgets/custom_txt_frm_field.dart';
import 'package:bookia/features/login/login_view.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool passVisible = false;
  bool passVisible1 = true;
  bool passVisible2 = true;

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
                  'Hello! Register to get started',
                  style: AppTextStyles.heading,
                ),
                SizedBox(height: 30),

                CustomTextFormField(
                  mycontroller: nameController,
                  icon: Icons.person,
                  hintText: "Username",
                  inputType: TextInputType.text,
                  obsecure: false,
                  onpressed: () {},
                ),
                SizedBox(height: 20),

                CustomTextFormField(
                  mycontroller: emailController,
                  icon: Icons.email,
                  hintText: "email",
                  inputType: TextInputType.emailAddress,
                  obsecure: false,
                  onpressed: () {},
                ),
                SizedBox(height: 20),

                CustomTextFormField(
                  mycontroller: passwordController,
                  icon: passVisible1 ? Icons.visibility_off : Icons.visibility,
                  hintText: "Password",
                  inputType: TextInputType.text,
                  obsecure: passVisible1,
                  onpressed: () {
                    setState(() {
                      passVisible1 = !passVisible1;
                    });
                  },
                ),
                SizedBox(height: 20),

                CustomTextFormField(
                  mycontroller: confirmPasswordController,
                  icon: passVisible2 ? Icons.visibility_off : Icons.visibility,
                  hintText: "Confirm Password",
                  inputType: TextInputType.text,
                  obsecure: passVisible2,
                  onpressed: () {
                    setState(() {
                      passVisible2 = !passVisible2;
                    });
                  },
                ),
                SizedBox(height: 30),

                CustomButton(
                  bgColor: AppColors.primaryColor,
                  btnText: "Register",
                  txtColor: AppColors.backGroundColor,
                  onpressed: () {},
                ),
                SizedBox(height: 20),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
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
