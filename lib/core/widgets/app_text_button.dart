import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/constants.dart';
import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  const AppTextButton({super.key, required this.buttonText, required this.onPressed, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.kRadius40))),
        backgroundColor: WidgetStatePropertyAll(backgroundColor??AppColors.mainPurple),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 16.h,
          )
        ),
        fixedSize: WidgetStateProperty.all(
          Size(double.maxFinite, 56.h)
        ),
        elevation: const WidgetStatePropertyAll(0),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: TextStyles.font16White700Weight,),
    );
  }
}

class AppBorderedTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color? borderColor;
  final Color? textColor;
  const AppBorderedTextButton({super.key, required this.buttonText, required this.onPressed, this.borderColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.kRadius40))),
        backgroundColor: const WidgetStatePropertyAll(AppColors.white),
        side: WidgetStatePropertyAll(BorderSide(color: borderColor??AppColors.mainPurple)),
        padding: WidgetStateProperty.all(
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 16.h,
            )
        ),
        fixedSize: WidgetStateProperty.all(
            Size(double.maxFinite, 56.h)
        ),
        elevation: const WidgetStatePropertyAll(0),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: TextStyles.font16White700Weight.copyWith(color: textColor),),
    );
  }
}