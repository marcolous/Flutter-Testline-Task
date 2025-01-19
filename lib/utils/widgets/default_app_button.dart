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
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
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

class NextPrevButton extends StatelessWidget {
  const NextPrevButton({super.key, this.onPressed, required this.isPrev});
  final bool isPrev;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(40.w, 40.w),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
      ),
      onPressed: onPressed,
      child: Icon(
        isPrev
            ? Icons.arrow_back_ios_new_rounded
            : Icons.arrow_forward_ios_rounded,
        color: Colors.grey[800],
        size: 20.sp,
      ),
    );
  }
}
