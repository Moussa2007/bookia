import 'package:bookia/core/global/app_text_styles.dart';
import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/utils/navigation.dart';
import 'package:bookia/core/widgets/logo.dart';
import 'package:bookia/features/welcome/welcome_view.dart';
import 'package:flutter/material.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with TickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    fadingAnimation = Tween<double>(
      begin: 0.1,
      end: 1.0,
    ).animate(animationController!);

    animationController!.repeat(reverse: true);
    Future.delayed(Duration(seconds: 10), () {
      if (!mounted) return;
      pushReplacement(context, WelcomeView());
    });
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.backGroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //AnimatedBuilder(
            //animation: fadingAnimation!,
            //builder: (context, _) => Opacity(
              //opacity: fadingAnimation?.value,
              //child: 
              Logo(),
              
              Text('Order your book now!', style: AppTextStyles.bodyMediumBlack),
            
          
        ],
      ),
    );
  }
}
