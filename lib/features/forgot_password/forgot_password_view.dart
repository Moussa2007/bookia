import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/features/forgot_password/forgot_password_body.dart';
import 'package:bookia/features/login/login_view.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 41,
          height: 41,
          margin: EdgeInsets.all(3),
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: IconButton(
            onPressed: () {
              pushReplacement(context, LoginView());
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
      ),
      body: ForgotPasswordBody(),
    );
  }
}
