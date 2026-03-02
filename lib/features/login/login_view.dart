import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/features/login/login_body.dart';
import 'package:bookia/features/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              pushReplacement(context, WelcomeView());
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
      ),
      body: LoginBody(),
    );
  }
}
