import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.mycontroller,
    required this.icon,
    required this.hintText, 
    required this.inputType,  
    required this.obsecure, 
    required this.onpressed,
  });

  final TextEditingController? mycontroller;
  final IconData? icon;
  final String? hintText;
  final TextInputType? inputType;
  final bool obsecure;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obsecure,
      controller: mycontroller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: onpressed, 
        icon: Icon(icon)),
        hintText: hintText,
        fillColor: AppColors.greyColor,
        filled: true,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.backGroundColor, width: 0),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: AppColors.backGroundColor, width: 0),
        ),

        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.backGroundColor, width: 0),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.errorColor, width: 0),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter your email please";
        }
        return null;
      },
    );
  }
}
