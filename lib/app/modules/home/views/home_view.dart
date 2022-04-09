import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widgets/home_menu_item.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final Widget _weekDaysMenuItem = HomeMenuItem(
      title: 'Week Days',
      iconPath: Icons.calendar_today_outlined,
      onTap: controller.navigateToWeekDaysMenu,
    );
    final Widget _blogMenuItem = HomeMenuItem(
      title: 'Blog',
      iconPath: Icons.book_outlined,
      onTap: controller.navigateToBlog,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('StepChange'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        width: context.width,
        height: context.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_blogMenuItem, _weekDaysMenuItem],
          ),
        ),
      ),
    );
  }
}
