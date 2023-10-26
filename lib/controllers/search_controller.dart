import 'package:get/get.dart';
import 'package:payv_attendees/mock/mock_api.dart';

class CustomSearchController extends GetxController {
  RxList<String> searchList = courseList.obs;

  void updateSearchItem(List<String> listSet, String searchQuery) {
    //TODO::FIX: Why does it give an issue when searching for the first course??
    for (String item in courseList) {
      if (item.contains(searchQuery.toUpperCase())) {
        if (!searchList.contains(item)) {
          searchList.add(item);
        }
      } else {
        searchList.remove(item);
      }
      if (searchQuery.isEmpty) {
        searchList = courseList.obs;
      }
    }
  }
}
