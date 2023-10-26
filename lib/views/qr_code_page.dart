import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/views/attendance_page.dart';
import 'package:payv_attendees/views/widgets/custom_button.dart';
import 'package:payv_attendees/views/widgets/main_screen_widget_box.dart';

class QrCodePage extends StatelessWidget {
  const QrCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreenWidgetBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 20.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: BackButton(
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            SizedBox(height: 40.h),
            Text(
              'Share your personal code to generate attendance link',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width * 0.86,
              constraints: const BoxConstraints(
                maxHeight: 388,
                maxWidth: 357,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF141414).withOpacity(.11),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 4),
                  ),
                  BoxShadow(
                    color: const Color(0xFF5B5B5B).withOpacity(.10),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, -4),
                  ),
                  BoxShadow(
                    color: const Color(0xFF454545).withOpacity(.4),
                    spreadRadius: 0,
                    blurRadius: 6,
                    blurStyle: BlurStyle.inner,
                    offset: const Offset(0, 4),
                  ),
                  BoxShadow(
                    color: const Color(0xFF101010).withOpacity(.5),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: Image.asset('assets/img/qr2.png'),
            ),
            SizedBox(height: 34.h),
            CustomButton(
              label: const Text(
                '342232193891',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
              colored: true,
            ),
            SizedBox(height: 9.h),
            Text(
              'click to copy code',
              style: TextStyle(
                color: const Color(0xFF292D32).withOpacity(.40),
                fontSize: 9,
              ),
            ),
            SizedBox(height: 59.h),
            Align(
              alignment: Alignment.bottomRight,
              child: MaterialButton(
                onPressed: () {
                  Get.to(() => const AttendancePage());
                },
                child: Text(
                  'preview attendance',
                  style: TextStyle(
                    color: const Color(0xFFBA1A1A).withOpacity(.40),
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
