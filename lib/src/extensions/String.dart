import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/resources/resources.dart';

extension StringExtension on String {
  static String durationToString(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    var twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    var twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inHours > 0) {
      return '${duration.inHours}:$twoDigitMinutes:$twoDigitSeconds';
    } else
      return '$twoDigitMinutes:$twoDigitSeconds';
  }

  static String dateTimeWithInterval(DateTime dateTime) {
    var defaultTime = DateTimeExtension.getTimeByDate(dateTime);
    var endTime =
        DateTimeExtension.getTimeByDate(dateTime.add(Duration(minutes: 15)));
    return defaultTime + ' - ' + endTime;
  }

  static String? addressToString(AddressDto? addressDto) {
    if (addressDto == null) return null;
    String _city =
        addressDto.cityName != null ? 'г. ${addressDto.cityName}, ' : '';
    String _street = addressDto.street != null ? '${addressDto.street} ' : '';
    String _home = addressDto.home != null ? '${addressDto.home}, ' : '';
    String _housing =
        addressDto.housing != null ? 'кв. ${addressDto.housing}' : '';

    return '$_city$_street$_home$_housing';
  }

  static String stringWithRussianRube(String price) {
    return '$price ₽';
  }

  static String onlyCompositionInDescription(String? description) {
    if (description == null) {
      return TotoDictionary.recommend;
    } else {
      var indx = description.indexOf('.');
      if (indx == -1) {
        return description;
      } else {
        return description.substring(0, indx);
      }
    }
  }

  static String? stringPhone(String? phone) {
    if (phone == null) return phone;
    phone = phone.replaceAll(RegExp(r'[^+0-9]+'), '');
    if (phone[0] == '8') {
      phone = phone.replaceFirst(r'8', '+7');
    }
    var newphone = phone.substring(0, 2);
    newphone += ' (' + phone.substring(2, 5) + ') ';
    newphone += phone.substring(5, 8) + '-';
    newphone += phone.substring(8, 10) + '-';
    newphone += phone.substring(10, 12);
    return newphone;
  }
}
