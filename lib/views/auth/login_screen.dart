import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/colors/custom_colors.dart';
import 'package:payv_attendees/views/onboarding/category_screen.dart';
import 'package:payv_attendees/views/widgets/custom_button.dart';
import 'package:payv_attendees/views/widgets/gradient_box.dart';
import 'package:payv_attendees/views/widgets/main_screen_widget_box.dart';
import 'package:payv_attendees/views/widgets/page_label.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreenWidgetBox(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 50.h),
            const PageLabel(
              text: 'Login or Signup',
            ),
            SizedBox(height: 68.h),
            // CustomTextField(
            //   label: Text('Phone number'),
            //   textEditingController: TextEditingController(),
            // ),

            // CustomTextField(
            //   label: Text('Email'),
            //   textEditingController: TextEditingController(),
            // ),
            CustomButton(
              onPressed: () {},
              colored: false,
              label: const Center(
                child: Text('Phone number'),
              ),
            ),
            SizedBox(height: 24.h),
            CustomButton(
              onPressed: () {
                Get.to(() => const CategoryScreen());
              },
              colored: false,
              label: const Center(
                child: Text('Email'),
              ),
            ),
            SizedBox(height: 24.h),
            CustomButton(
              onPressed: () {},
              colored: false,
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/google_logo.png',
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(width: 5),
                  const Text('Continue with Google'),
                ],
              ),
            ),
            SizedBox(height: 28.h),
            CustomButton(
              onPressed: () {},
              colored: true,
              label: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/fb_logo.png',
                    width: 28,
                    height: 28,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Continue with Facebook',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.76),
                  ),
                ),
                MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  minWidth: 0,
                  onPressed: () {},
                  child: const Text(
                    'Click here',
                    style: TextStyle(
                      color: CustomColors.buttonColor2,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.h),
            Text(
              'by clicking on login, you agree with all\nour terms and conditions',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(.53),
              ),
            ),
            // SizedBox(height: 72.h),
          ],
        ),
      ),
    );
  }
}
