import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/colors/custom_colors.dart';
import 'package:payv_attendees/controllers/user_controller.dart';
import 'package:payv_attendees/mock/mock_api.dart';
import 'package:payv_attendees/views/qr_code_page.dart';
import 'package:payv_attendees/views/widgets/gradient_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());
    return Scaffold(
      body: GradientBox(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: 150,
                automaticallyImplyLeading: false,
                flexibleSpace: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  // padding: const EdgeInsets.symmetric(vertical: 45),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    gradient: CustomColors.colorGradient1,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // const SizedBox(height: 33),
                                Text(
                                  'Hi ${userController.userName}',
                                  style: const TextStyle(
                                    color: CustomColors.textColor2,
                                    fontSize: 26,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'welcome back',
                                  style: TextStyle(
                                    color: Color(0xFFF0DBFF),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.all(8.0).copyWith(right: 20),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: CustomColors.buttonColor1,
                              backgroundImage:
                                  AssetImage(userController.userImage),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(19),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 29),
                          MaterialButton(
                            height: 49,
                            minWidth: 353,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(
                                color: const Color(0xFFFB3DE3).withOpacity(.29),
                              ),
                            ),
                            onPressed: () {
                              Get.to(() => const QrCodePage());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(width: 17),
                                Icon(
                                  Icons.error,
                                  size: 30,
                                  color:
                                      const Color(0xFFBA1A1A).withOpacity(.44),
                                ),
                                const SizedBox(width: 12),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Generate Link',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'click to generate attendance code',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 36),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'School Update',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              SizedBox(
                                height: 80,
                                width: MediaQuery.of(context).size.width,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    MainScreenSubButton(
                                      iconWidget: const Icon(
                                        Icons.newspaper_rounded,
                                        size: 28,
                                        color: Color(0xFFD8C5E5),
                                      ),
                                      onTap: () {},
                                      label: 'News',
                                    ),
                                    MainScreenSubButton(
                                      iconWidget: const Icon(
                                        Icons.calendar_today_outlined,
                                        size: 28,
                                        color: Color(0xFFD8C5E5),
                                      ),
                                      onTap: () {},
                                      label: 'Calendar',
                                    ),
                                    MainScreenSubButton(
                                      iconWidget: const Icon(
                                        Icons.note_alt_rounded,
                                        size: 28,
                                        color: Color(0xFFD8C5E5),
                                      ),
                                      onTap: () {},
                                      label: 'Attendance',
                                    ),
                                    MainScreenSubButton(
                                      iconWidget: const Icon(
                                        Icons.notes,
                                        size: 28,
                                        color: Color(0xFFD8C5E5),
                                      ),
                                      onTap: () {},
                                      label: 'Course Outline',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 29.0,
                              ),
                              const Text(
                                "Recent Attendance",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              ...List.generate(
                                courseList.length,
                                (index) => AttendanceListTile(
                                  courseTitle: courseList[index],
                                  attendanceDate: 'friday 24th july 2023',
                                  onPressed: () {},
                                  leading: Icon(
                                    Icons.upcoming,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AttendanceListTile extends StatelessWidget {
  const AttendanceListTile({
    super.key,
    required this.courseTitle,
    required this.attendanceDate,
    required this.onPressed,
    required this.leading,
  });

  final String courseTitle;
  final String attendanceDate;
  final VoidCallback onPressed;
  final Widget leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Row(
            children: [
              leading,
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseTitle,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    attendanceDate,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF292D32).withOpacity(.58),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          MaterialButton(
            onPressed: onPressed,
            child: Text(
              'see attendance',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFE19A9A).withOpacity(.78),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MainScreenSubButton extends StatelessWidget {
  const MainScreenSubButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.iconWidget,
  });

  final VoidCallback onTap;
  final String label;
  final Widget iconWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: MaterialButton(
        onPressed: onTap,
        color: const Color(0xFFD8C5E5).withOpacity(.17),
        elevation: 0,
        height: 66,
        padding: const EdgeInsets.all(6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget,
            const SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(
                fontSize: 8.0,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
    );
  }
}
