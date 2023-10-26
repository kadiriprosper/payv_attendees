import 'package:get/get.dart';
import 'package:payv_attendees/mock/mock_api.dart';

class UserController extends GetxController {
  final String _userName = userData['name']!;

  get userName => _userName;
  get userImage => userData['image'];
}
