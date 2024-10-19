import 'app_internal_variable_const.dart';

String toDate(DateTime date) {
  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  return '$day.$month.${date.year}';
}

String convertDuration(int minutes) {
  if (minutes <= 0) {
    return '';
  }

  int days = minutes ~/ (24 * 60);
  int hours = (minutes % (24 * 60)) ~/ 60;
  int mins = minutes % 60;

  List<String> parts = [];

  if (days > 0) {
    parts.add('$days күн');
  }
  if (hours > 0) {
    parts.add('$hours сағат');
  }
  if (mins > 0) {
    parts.add('$mins минут');
  }

  return parts.join(', ');
}

String toTime(DateTime date) {
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}

String toTimeDuration(Duration time) {
  final hours = time.inHours;
  final minutes = time.inMinutes % 60;
  final seconds = time.inSeconds % 60;
  return '$hours сағат $minutes минут';
}

String toDayMonthShort(DateTime date) {
  var mon = date.month;
  return '${date.day} ${AppVariables.months_kk[mon - 1]}';
}

String toMonthTime(DateTime date) {
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  var mon = date.month;
  return '${date.day} ${AppVariables.months_short[mon - 1]}, $hour:$minute';
}

String toMonthTimeFull(DateTime date) {
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  var mon = date.month;
  return '${date.day} ${AppVariables.months[mon - 1].toString().toLowerCase()}, $hour:$minute';
}

String toDateMonthYear(DateTime date) {
  var mon = date.month;
  return '${date.day} ${AppVariables.months[mon - 1].toString().toLowerCase()} ${date.year}';
}

String toMonthSingleDate(DateTime date, {String? locale}) {
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  var mon = date.month;
  // return '${date.day} ${AppVariables.toLocalization(locale: locale ?? 'en', index: mon - 1)} ${date.year} • $hour:$minute';
  return '${date.day}.$month.${date.year} • $hour:$minute';
}

String toMonthDateWithTime(DateTime date) {
  final hour = date.hour.toString().padLeft(2, '0');
  final minute = date.minute.toString().padLeft(2, '0');
  var mon = date.month;
  return '${date.day} ${AppVariables.months[mon - 1]} • $hour:$minute';
}

String toMonthDate(DateTime dates) {
  var mon = dates.month;
  return '${dates.day} ${AppVariables.months[mon - 1]}';
}

String toMonthShort(DateTime dates) {
  var mon = dates.month;
  return '${AppVariables.months_short[mon - 1]}';
}

String toMonthDates(DateTime date1, DateTime date2) {
  if (date1.day == date2.day) {
    var mon = date1.month;
    return '${date1.day} ${AppVariables.months[mon - 1]}';
  } else if (date1.month == date2.month) {
    var mon1 = date1.month;
    return '${date1.day} - ${date2.day} ${AppVariables.months[mon1 - 1]}';
  } else {
    var mon1 = date1.month;
    var mon2 = date1.month;
    return '${date1.day} ${AppVariables.months[mon1 - 1]} - ${date2.day} ${AppVariables.months[mon2 - 1]} ';
  }
}

String toLocale(String locale) {
  if (locale == 'en') {
    return 'en';
  } else {
    return 'ru';
  }
}
