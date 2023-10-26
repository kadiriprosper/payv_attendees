import 'package:get/get.dart';

class ButtonController extends GetxController {
  final RxInt _currentlyClickedButton = 0.obs;

  int get currentlyClickedButton => _currentlyClickedButton.value;

  void setClickedButton(int currentlyClickedButtonIndex) {
    _currentlyClickedButton.value = currentlyClickedButtonIndex;
  }
}
