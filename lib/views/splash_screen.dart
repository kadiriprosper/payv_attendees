import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/colors/custom_colors.dart';
import 'package:payv_attendees/views/auth/login_screen.dart';
import 'package:payv_attendees/views/widgets/gradient_box.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 5),
          () => Get.to(const LoginScreen()),
        ),
        builder: (context, snapshot) {
          return GradientBox(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome\nBack',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  const Text(
                    'glad to have you back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: CustomColors.smallTextColor, fontSize: 9),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
