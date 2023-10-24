import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:linguasign_app/src/helpers/color.dart';

showtoast(message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP_LEFT,
      timeInSecForIosWeb: 1,
      webPosition: "center",
      webBgColor: "linear-gradient(to right, #01a6e4, #01a6e4)",
      backgroundColor:AppColors.ButtonGr2,
      textColor: Colors.white,
      fontSize: 16.0);
}
