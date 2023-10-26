import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/colors/custom_colors.dart';
import 'package:payv_attendees/controllers/button_controller.dart';
import 'package:payv_attendees/controllers/search_controller.dart';
import 'package:payv_attendees/mock/mock_api.dart';
import 'package:payv_attendees/views/main_screns/main_screen.dart';
import 'package:payv_attendees/views/widgets/main_screen_widget_box.dart';
import 'package:payv_attendees/views/widgets/page_label.dart';

class CourseSelectionScreen extends StatefulWidget {
  const CourseSelectionScreen({super.key});

  @override
  State<CourseSelectionScreen> createState() => _CourseSelectionScreenState();
}

class _CourseSelectionScreenState extends State<CourseSelectionScreen> {
  final searchController = Get.put(CustomSearchController());
  final buttonController = Get.put(ButtonController());
  final searchBarController = SearchController();

  @override
  void dispose() {
    searchBarController.dispose();
    super.dispose();
  }

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
            SizedBox(height: 68.h),
            const PageLabel(text: 'Select Course'),
            SizedBox(height: 40.h),
            SearchBar(
              controller: searchBarController,
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
              onChanged: (_) => searchController.updateSearchItem(
                courseList,
                searchBarController.text,
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
            Container(
              width: 400,
              alignment: Alignment.center,
              child: Obx(
                () => Wrap(
                  children: List.generate(
                    searchController.searchList.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: ActionChip(
                        backgroundColor:
                            buttonController.currentlyClickedButton == index
                                ? CustomColors.buttonColor1
                                : Theme.of(context).chipTheme.backgroundColor,
                        label: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.add),
                            Obx(
                              () => Text(
                                searchController.searchList[index],
                                style: TextStyle(
                                  color:
                                      buttonController.currentlyClickedButton ==
                                              index
                                          ? Colors.white
                                          : Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          buttonController.setClickedButton(index);
                          Get.offUntil(
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                            (route) => false,
                          );
                        },
                      ),
                    ),
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
