import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:payv_attendees/controllers/attendance_controller.dart';
import 'package:payv_attendees/views/widgets/main_screen_widget_box.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    final attendanceController = Get.put(AttendanceController());
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                border: TableBorder.all(
                  color: Colors.grey,
                ),
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
                dataTextStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                dividerThickness: 2,
                columns: const [
                  DataColumn(
                    label: Text(
                      'S/N',
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'NAME',
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'MATRICULATION NUMBER',
                    ),
                  ),
                ],
                rows: [
                  ...List.generate(
                    20,
                    (index) => DataRow(
                      cells: [
                        DataCell(
                          Text(
                            (index + 1).toString(),
                          ),
                        ),
                        DataCell(
                          Text(attendanceController.attendanceName),
                        ),
                        DataCell(
                          Text(attendanceController.attendanceMatNo),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
