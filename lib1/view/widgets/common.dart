import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

DateTime getDateTime(date) {
  DateTime tempDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(date);
  return tempDate;
}
