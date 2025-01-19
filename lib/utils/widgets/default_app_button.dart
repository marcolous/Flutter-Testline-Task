import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testline_task/utils/app_style.dart';

class DefaultAppButton extends StatelessWidget {
  const DefaultAppButton({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200.w, 40.w),
        backgroundColor: Colors.white.withOpacity(.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppStyle.style16GreyMedium(),
      ),
    );
  }
}
