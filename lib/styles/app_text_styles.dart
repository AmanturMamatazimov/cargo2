import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';
import 'colors.dart';

// Roboto-Regular
class AppTextStyles {

  static  TextStyle kRobotoReg40ColorBlack600 = TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto-Regular',
    fontSize: 40.sp,
    color: AppColors.mainBlack,
  );

  static TextStyle kRobotoReg12ColorBlack500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto-Regular',
    fontSize: 12.sp,
    color: AppColors.mainBlack,
  );

  static TextStyle black16Medium = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Gilroy',
    height: 1.2,
    fontWeight: FontWeight.w500,
    color: AppColors.mainBlack,
  );

  static TextStyle black16SemiboldUnderline = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Gilroy',
    height: 1.2,
    fontWeight: FontWeight.w600,
    color: AppColors.mainBlack,
    decoration: TextDecoration.underline
  );

  static TextStyle black17SemiBold = TextStyle(
    fontSize: 17.sp,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w600,
    color: AppColors.mainBlack,
  );

  static TextStyle hint16Medium = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    color: AppColors.hintColor,
  );

  static TextStyle white16Medium = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    color: AppColors.buttonTextColor,
  );

  static TextStyle mainColor16SemiBold = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w600,
    color: AppColors.mainColor,
  );

  static TextStyle blackGrey16Regular = TextStyle(
    fontSize: 16.sp,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w400,
    color: AppColors.blackGrey,
  );

}