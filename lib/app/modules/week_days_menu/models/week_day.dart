/// day : "Mon"
/// dayValue : 5
/// isDaySelected : false

class WeekDay {
  WeekDay({
      String? day, 
      int? dayValue, 
      bool? isDaySelected,}){
    _day = day;
    _dayValue = dayValue;
    _isDaySelected = isDaySelected;
}

  set isDaySelected(bool ? value) {
    _isDaySelected = value;
  }

  WeekDay.fromJson(dynamic json) {
    _day = json['day'];
    _dayValue = json['dayValue'];
    _isDaySelected = json['isDaySelected'];
  }
  String? _day;
  int? _dayValue;
  bool? _isDaySelected;

  String? get day => _day;
  int? get dayValue => _dayValue;
  bool? get isDaySelected => _isDaySelected;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['dayValue'] = _dayValue;
    map['isDaySelected'] = _isDaySelected;
    return map;
  }

}