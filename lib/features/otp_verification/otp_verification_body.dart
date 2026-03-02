import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/core/widgets/custom_button.dart';
import 'package:bookia/features/change_password/new_password_View.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationBody extends StatefulWidget {
  const OtpVerificationBody({super.key});

  @override
  State<OtpVerificationBody> createState() => _OtpVerificationBodyState();
}

class _OtpVerificationBodyState extends State<OtpVerificationBody> {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    //==========================================
    final defaultPinTheme = PinTheme(
      width: 40,
      height: 40,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color(0xFF1E3C40),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF0287F3)),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    // Define themes for focused, submitted, and error states
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    //===========================================
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //===============================================
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text('OTP Verification', style: AppTextStyles.heading),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Enter the verification code we just sent on your email address.",
                  style: AppTextStyles.bodyMediumBlack.copyWith(
                    color: AppColors.darkGrey,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Pinput(
                        controller: _pinController,
                        focusNode: _focusNode,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: focusedPinTheme,
                        submittedPinTheme: submittedPinTheme,
                        validator: (s) {
                          // Optional: add validation logic
                          return s == '160260' ? null : 'Pin incorrect';

                          //return null;
                        },
                        length: 6, // Set the OTP length
                        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                        showCursor: true,
                        onCompleted: (pin) {
                          // Callback when all fields are filled
                          //print('Completed: $pin');
                          // You can call your verification logic here
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              CustomButton(
                bgColor: AppColors.primaryColor,
                btnText: "Verify",
                txtColor: AppColors.darkBlack,
                onpressed: () {
                  pushReplacement(context, NewPasswordView());
                },
              ),
            ],
          ),
          //=====================================
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive code?",
                    style: AppTextStyles.bodySmallBlack,
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend",
                      style: AppTextStyles.bodySmallBlack.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //=============================
        ],
      ),
    );
  }
}
