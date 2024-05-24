import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';

class BottomSheetErrorTitleCard extends StatelessWidget {
  final String fileName;
  const BottomSheetErrorTitleCard({
    required this.fileName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.kRadius6),
        side: const BorderSide(
          color: AppColors.lightGray,
        ),
      ),
      elevation: 0,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppConstants.kVerticalPadding16,
          horizontal: AppConstants.kHorizontalPadding14,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Assets.iconDocument,
              colorFilter: const ColorFilter.mode(
                AppColors.red,
                BlendMode.srcIn,
              ),
              height: 25,
              width: 25,
            ),
            const HorizontalSpace(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 25.h,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Upload failed, please try again',
                        style: TextStyles.font14Red700Weight,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Text(
                    fileName,
                    style: TextStyles.font12Red400Weight,
                    maxLines: 1,
                  ),
                  Text(
                    'Try again',
                    style: TextStyles.font14Red700Weight,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              Assets.iconTrash,
              height: 25,
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}