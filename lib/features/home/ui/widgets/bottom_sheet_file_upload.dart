import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class BottomSheetFileUpload extends StatelessWidget {
  const BottomSheetFileUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return FDottedLine(
      color: AppColors.gray.withOpacity(0.5),
      strokeWidth: 2.0,
      dottedLength: 10.0,
      space: 10.0,
      corner: FDottedLineCorner.all(AppConstants.kRadius6),
      child: SizedBox(
        width: double.infinity,
        height: 150.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: AppColors.gray.withOpacity(0.16),
              child: SvgPicture.asset(
                Assets.iconDocumentUpload,
                colorFilter: const ColorFilter.mode(
                  AppColors.lightPurple,
                  BlendMode.srcIn,
                ),
                height: 25,
                width: 25,
              ),
            ),
            const VerticalSpace(20),
            Text(
              S.current.bottom_sheet_upload_title,
              style: TextStyles.font14LightPurple700Weight,
            ),
            const VerticalSpace(10),
            Text(
              S.current.bottom_sheet_upload_text,
              style: TextStyles.font12ThirdBlack500Weight,
            ),
          ],
        ),
      ),
    );
  }
}