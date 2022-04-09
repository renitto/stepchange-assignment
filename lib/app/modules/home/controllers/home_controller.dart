import 'package:assignment/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void navigateToBlog() {
    Get.toNamed(Routes.BLOG);
  }

  void navigateToWeekDaysMenu() {
    Get.toNamed(Routes.WEEK_DAYS_MENU);
  }
}
