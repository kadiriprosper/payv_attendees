import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/controllers/button_controller.dart';
import 'package:payv_attendees/mock/mock_api.dart';
import 'package:payv_attendees/views/onboarding/level_selection_screen.dart';
import 'package:payv_attendees/views/widgets/item_card_widget.dart';
import 'package:payv_attendees/views/widgets/main_screen_widget_box.dart';
import 'package:payv_attendees/views/widgets/page_label.dart';

class DepartmentSelectionScreen extends StatelessWidget {
  const DepartmentSelectionScreen({super.key});

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
            const PageLabel(text: 'Department'),
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
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.spaceBetween,
              children: List.generate(
                facultyList.length,
                (index) => Obx(
                  () => ItemCardWidget(
                    onTap: () {
                      buttonController.setClickedButton(index);
                      Get.to(() => const LevelSelectionScreen());
                    },
                    imagePath: facultyList[index]!['icon']!,
                    label: facultyList[index]!['name']!,
                    colored: buttonController.currentlyClickedButton == index,
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
