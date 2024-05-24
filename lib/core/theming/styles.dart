import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants.dart';
import 'colors.dart';


abstract class TextStyles {

  static TextStyle font16White700Weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: AppConstants.kMainFont,
  );
  static TextStyle font14White400Weight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontFamily: AppConstants.kMainFont,
    overflow: TextOverflow.ellipsis,
  );

  static TextStyle font16SecondBlack600Weight = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.secondBlack,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font14Gray400Weight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font14LightPurple700Weight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.lightPurple,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font12ThirdBlack500Weight = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.thirdBlack,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font12Gray400Weight = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.gray,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font12Red400Weight = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.red,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font14ThirdBlack700Weight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.thirdBlack,
    fontFamily: AppConstants.kMainFont,
  );
  static TextStyle font14ThirdBlack400Weight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.thirdBlack,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font14Red700Weight = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.red,
    fontFamily: AppConstants.kMainFont,
  );

  static TextStyle font24LightRed600Weight = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.lightRed,
    fontFamily: AppConstants.kMainFont,
  );
}