import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/controllers/button_controller.dart';
import 'package:payv_attendees/views/onboarding/course_selection_screen.dart';
import 'package:payv_attendees/views/widgets/custom_button.dart';
import 'package:payv_attendees/views/widgets/main_screen_widget_box.dart';
import 'package:payv_attendees/views/widgets/page_label.dart';

class LevelSelectionScreen extends StatelessWidget {
  const LevelSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buttonController = Get.put(ButtonController());
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
            SizedBox(height: 68.h),
            const PageLabel(text: 'Level'),
            SizedBox(height: 40.h),
            SearchBar(
              backgroundColor: MaterialStateColor.resolveWith(
                (states) => Colors.white.withOpacity(0.14),
              ),
              shadowColor: MaterialStateColor.resolveWith(
                (states) => Colors.black.withOpacity(.15),
              ),
              hintText: 'Search here',
              hintStyle: MaterialStateTextStyle.resolveWith(
                (states) => const TextStyle(color: Colors.grey),
              ),
              trailing: const [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20.h),
            Obx(
              () => CustomButton(
                label:  Text('100 Level', style: TextStyle(
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
                label:  Text('200 Level', style: TextStyle(
                  color:buttonController.currentlyClickedButton == 1 ? Colors.white:  Colors.black,
                ),),
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
                label: const Text('300 Level'),
                onPressed: () {
                  buttonController.setClickedButton(2);
                  Get.to(() => const CourseSelectionScreen());
                },
                colored:
                    buttonController.currentlyClickedButton == 2 ? true : false,
              ),
            ),
            SizedBox(height: 32.h),
            Obx(
              () => CustomButton(
                label: Text('400 Level', style: TextStyle(
                    color: buttonController.currentlyClickedButton == 3
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                onPressed: () {
                  buttonController.setClickedButton(3);
                },
                colored:
                    buttonController.currentlyClickedButton == 3 ? true : false,
              ),
            ),
            SizedBox(height: 32.h),
            Obx(
              () => CustomButton(
                label: Text('500 Level', style: TextStyle(
                    color: buttonController.currentlyClickedButton ==4
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
                onPressed: () {
                  buttonController.setClickedButton(4);
                },
                colored:
                    buttonController.currentlyClickedButton == 4 ? true : false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
