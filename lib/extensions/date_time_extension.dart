import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  static const fixLocale = 'vi';
  static const timeFormatHHMM = 'HH:mm';
  static const dateFormatMMMddYYY = 'MMM dd, yyyy';
  static const dateFormatddMMMMYYY = 'dd MMMM, yyyy';
  static const dateFormatddMMyyyy = 'dd/MM/yyyy';
  static const dateFormatWithName = 'EEEE, dd/MM/yyyy';
  static const dateFormatWithName2 = 'HH:mm a - dd/MM/yyyy';
  static const dateFormatHHmmddMMyyyy = 'HH:mm dd/MM/yyyy';
  static const dateFormatHHmmddMMyyyy2 = 'HH:mm - dd/MM/yyyy';
  static const dateFormatHHmmddMMyyyy3 = 'dd/MM/yyyy, HH:mm';
  static const dateFormatHHmmssddMMyyyy = 'HH:mm:ss dd/MM/yyyy';
  static const dateFormat = "dd/MM/yyyy";
  static const dateFormatYYYYMMDD = "yyyy/MM/dd";
  static const dateFormatFilter = "yyyy-MM-dd";
  static const monthFormat = "MMMM, yyyy";
  static const monthFormat2 = "MM, yyyy";
  static const dateTimeFormat = "dd/MM/yyyy, HH:mm a";
  static const timeFormat = "HH:mm a";
  static const dateWithoutYear = "dd/MM";
  static const nameOfDay = "EEE";
  static const dayWithNameAndHour = "EEEE - dd/MM/yyyy, HH:mm a";

  bool get isToday => this.date == DateTime.now().date;

  String get formatTimeHHMM => DateFormat(timeFormatHHMM, fixLocale).format(this);

  String get formatDayWithNameAndHour => DateFormat(dayWithNameAndHour, fixLocale).format(this);

  String get dateTimeFormatComplete => DateFormat(dateTimeFormat, fixLocale).format(this);

  String get formatMMMddYYY => DateFormat(dateFormatMMMddYYY, fixLocale).format(this);
  
  String get formatddMMMMYYY => DateFormat(dateFormatddMMMMYYY, fixLocale).format(this);

  String get formatddMMyyyy => DateFormat(dateFormatddMMyyyy, fixLocale).format(this);

  String get formatDisplayedMonthYear => DateFormat(monthFormat2, fixLocale).format(this);

  String get formatDisplayedNameOfDay => DateFormat(nameOfDay, fixLocale).format(this);

  String get formatDisplayedDateTime => DateFormat(dateFormatWithName, fixLocale).format(this);

  String get formatDisplayedDateTime2 => DateFormat(dateFormatWithName2, fixLocale).format(this);

  String get formatDisplayedHHMMDDMMYYYY => DateFormat(dateFormatHHmmddMMyyyy, fixLocale).format(this);

  String get formatDisplayedHHMMDDMMYYYY2 => DateFormat(dateFormatHHmmddMMyyyy2, fixLocale).format(this);

  String get formatDisplayedHHMMDDMMYYYY3 => DateFormat(dateFormatHHmmddMMyyyy3, fixLocale).format(this);

  String get formatDisplayedHHMMSSDDMMYYYY => DateFormat(dateFormatHHmmssddMMyyyy, fixLocale).format(this);

  String get formatDisplayedDate => DateFormat(dateFormat, fixLocale).format(this);

  String get formatDisplayedDateYYYYMMDD => DateFormat(dateFormatYYYYMMDD, fixLocale).format(this);

  String get formatDisplayedTime => DateFormat(timeFormat, fixLocale).format(this);

  String get dateFormatForFilter => DateFormat(dateFormatFilter, fixLocale).format(this);

  String formatDateTime(String formatter) => DateFormat(formatter, fixLocale).format(this);

  DateTime get date => this == null ? null : DateTime(year, month, day);

  DateTime get dateUTC => this == null ? null : DateTime.utc(this.year, this.month, this.day);
}

extension TimeOfDayExtension on TimeOfDay {
  TimeOfDay add({int hour = 0, int minute = 0}) {
    return this.replacing(hour: this.hour + hour, minute: this.minute + minute);
  }
}