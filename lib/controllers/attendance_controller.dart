import 'package:get/get.dart';
import 'package:payv_attendees/mock/mock_api.dart';

class AttendanceController extends GetxController {
  get attendanceName => attendanceData[0]!['name'];
  get attendanceMatNo => attendanceData[0]!['mat_no'];
}
