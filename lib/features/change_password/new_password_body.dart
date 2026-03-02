import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/core/widgets/custom_txt_frm_field.dart';
import 'package:bookia/features/password_changed/password_changed_view.dart';
import 'package:flutter/material.dart';

class NewPasswordBody extends StatefulWidget {
  const NewPasswordBody({super.key});

  @override
  State<NewPasswordBody> createState() => _NewPasswordBodyState();
}

class _NewPasswordBodyState extends State<NewPasswordBody> {
  final _formKey = GlobalKey<FormState>();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Create new password',
                    style: AppTextStyles.heading,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Your new password must be unique from those previously used.",
                    style: AppTextStyles.bodyMediumBlack.copyWith(
                      color: AppColors.darkGrey,
                      fontSize: 16,
                    ),
                  ),
                ),

                SizedBox(height: 30),
                CustomTextFormField(
                  mycontroller: passwordController,
                  icon: passVisible1 ? Icons.visibility_off : Icons.visibility,
                  hintText: "New Password",
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
                SizedBox(height: 50),
                CustomButton(
                  bgColor: AppColors.primaryColor,
                  btnText: "Reset password",
                  txtColor: AppColors.backGroundColor,
                  onpressed: () {
                    pushReplacement(context, PasswordChangedView());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
