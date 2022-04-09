import 'package:get/get.dart';

import '../modules/blog/bindings/blog_binding.dart';
import '../modules/blog/views/blog_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/week_days_menu/bindings/week_days_menu_binding.dart';
import '../modules/week_days_menu/views/week_days_menu_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WEEK_DAYS_MENU,
      page: () => WeekDaysMenuView(),
      binding: WeekDaysMenuBinding(),
    ),
    GetPage(
      name: _Paths.BLOG,
      page: () => BlogView(),
      binding: BlogBinding(),
    ),
  ];
}
