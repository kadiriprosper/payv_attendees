import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/controllers/button_controller.dart';
import 'package:payv_attendees/views/onboarding/faculty_selection_screen.dart';
import 'package:payv_attendees/views/widgets/custom_button.dart';
import 'package:payv_attendees/views/widgets/main_screen_widget_box.dart';
import 'package:payv_attendees/views/widgets/page_label.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonController = Get.put(ButtonController());
    return MainScreenWidgetBox(
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
          SizedBox(height: 96.h),
          const PageLabel(text: 'Category'),
          SizedBox(height: 85.h),
          Obx(
            () => CustomButton(
              label: Text(
                'Lecturer',
                style: TextStyle(
                  color: buttonController.currentlyClickedButton == 0
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              onPressed: () {
                buttonController.setClickedButton(0);
              },
              colored:
                  buttonController.currentlyClickedButton == 0 ? true : false,
            ),
          ),
          SizedBox(height: 32.h),
          Obx(
            () => CustomButton(
              label: Text(
                'Student',
                style: TextStyle(
                  color: buttonController.currentlyClickedButton == 1
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              onPressed: () {
                buttonController.setClickedButton(1);
              },
              colored:
                  buttonController.currentlyClickedButton == 1 ? true : false,
            ),
          ),
          SizedBox(height: 32.h),
          Obx(
            () => CustomButton(
              label: Text(
                'Admin',
                style: TextStyle(
                  color: buttonController.currentlyClickedButton == 2
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              onPressed: () {
                buttonController.setClickedButton(2);
                Get.to(() => const FacultySelectionScreen());
              },
              colored:
                  buttonController.currentlyClickedButton == 2 ? true : false,
            ),
          ),
        ],
      ),
    );
  }
}
