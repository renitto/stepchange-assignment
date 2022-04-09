import 'package:get/get.dart';

import '../models/week_day.dart';

class WeekDaysMenuController extends GetxController {
  List<WeekDay> weekDays = [
    WeekDay(day: 'Mon', dayValue: 5, isDaySelected: false),
    WeekDay(day: 'Tue', dayValue: 10, isDaySelected: false),
    WeekDay(day: 'Wed', dayValue: 15, isDaySelected: false),
    WeekDay(day: 'Thu', dayValue: 20, isDaySelected: false),
    WeekDay(day: 'Fri', dayValue: 25, isDaySelected: false),
    WeekDay(day: 'Sat', dayValue: 30, isDaySelected: false),
    WeekDay(day: 'Sun', dayValue: 35, isDaySelected: false)
  ];

  RxInt totalValue = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeInListSelection(int index, bool selectionValue) {
    //update the item in list
    weekDays[index].isDaySelected = selectionValue;
    //update total value
    if (selectionValue) {
      totalValue.value += weekDays[index].dayValue!;
    } else {
      totalValue.value -= weekDays[index].dayValue!;
    }
    //update selected view on value change
    update();
  }
}
