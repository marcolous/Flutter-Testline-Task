import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static String fontFamily = 'Poppins';

  static TextStyle style14Medium() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily,
    );
  }

  static TextStyle style16GreyMedium() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.grey[800],
      fontFamily: fontFamily,
    );
  }

  static TextStyle style16Medium() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily,
    );
  }

  static TextStyle style20WhiteMedium() {
    return TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontFamily: fontFamily,
    );
  }

  static TextStyle style30GreyMedium() {
    return TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.w500,
      color: Colors.grey[800],
      fontFamily: fontFamily,
    );
  }
}
