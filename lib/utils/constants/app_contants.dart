import 'package:flutter/services.dart';

class AppConstants {
  static String placeHolder = "";
  static RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');
  static RegExp passwordRegExp = RegExp(r"^(?=.*[A-Z]).{8,}$");
  static RegExp telegramOnlyLettersAndNumbersWithoutFirstCapital =
  RegExp(r'^[a-z0-9]+$');
  static RegExp noMinusOrLettersNoZero = RegExp(r'^[^0a-zA-Z-]');

  static RegExp textRegExp = RegExp("[a-zA-Z]");
  static RegExp phoneRegExp = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');


}