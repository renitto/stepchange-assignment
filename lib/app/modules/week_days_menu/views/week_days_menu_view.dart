import 'package:assignment/app/themes/app_text_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/week_days_menu_controller.dart';

class WeekDaysMenuView extends GetView<WeekDaysMenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week Days'),
        centerTitle: true,
      ),
      body: Container(
        width: context.width,
        height: context.height,
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child:
                      GetBuilder<WeekDaysMenuController>(builder: (controller) {
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: controller.weekDays.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            title:
                                Text(controller.weekDays[index].day.toString()),
                            value: controller.weekDays[index].isDaySelected,
                            onChanged: (bool? value) {
                              controller.changeInListSelection(index, value!);
                            },
                          );
                        });
                  }),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Obx(() => Text(
                        'Total Week Day Value: ${controller.totalValue}',
                        style: menuTitleTextStyle,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
