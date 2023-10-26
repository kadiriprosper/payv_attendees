import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:payv_attendees/views/attendance_page.dart';
import 'package:payv_attendees/views/auth/login_screen.dart';
import 'package:payv_attendees/views/main_screns/home_screen.dart';
import 'package:payv_attendees/views/main_screns/main_screen.dart';
import 'package:payv_attendees/views/onboarding/category_screen.dart';
import 'package:payv_attendees/views/onboarding/course_selection_screen.dart';
import 'package:payv_attendees/views/onboarding/department_selection_screen.dart';
import 'package:payv_attendees/views/onboarding/faculty_selection_screen.dart';
import 'package:payv_attendees/views/onboarding/level_selection_screen.dart';
import 'package:payv_attendees/views/qr_code_page.dart';
import 'package:payv_attendees/views/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainScreen(),
          title: 'Attendance Tracker',
        );
      },
    );
  }
}
