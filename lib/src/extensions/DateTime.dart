import 'package:flutter_form_bloc/flutter_form_bloc.dart';

extension DateTimeExtension on DateTime {
  static DateTime? stringToDateTime(String? string) {
    if (string == null) return null;
    var dateTime = DateTime.parse(string);
    return dateTime;
  }

  static String getStringByDate(DateTime date) {
    var format = DateFormat('dd.MM.yyyy');
    return format.format(date);
  }

  static String getTimeByDate(DateTime date) {
    var format = DateFormat('HH:mm');
    return format.format(date);
  }
}
