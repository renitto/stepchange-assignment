import 'package:get/get.dart';

import '../controllers/week_days_menu_controller.dart';

class WeekDaysMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WeekDaysMenuController>(
      () => WeekDaysMenuController(),
    );
  }
}
