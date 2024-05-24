import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';

class HelpCard extends StatelessWidget {
  const HelpCard({super.key});

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
            Image.asset(
              Assets.animManPen,
              width: 120.w,
              height: 120.h,
              cacheHeight: 400,
              cacheWidth: 400,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey !',
                    style: TextStyles.font24LightRed600Weight,
                  ),
                  const VerticalSpace(4),
                  Text(
                    'You need help in your cv ?',
                    style: TextStyles.font14ThirdBlack700Weight,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const VerticalSpace(4),
                  Text(
                    'Now, studentGator can help you in your cv',
                    style: TextStyles.font14ThirdBlack400Weight,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const VerticalSpace(6),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: const WidgetStatePropertyAll(
                            AppColors.secondPurple),
                        elevation: const WidgetStatePropertyAll(0),
                        visualDensity: VisualDensity.compact,
                        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
                            horizontal: AppConstants.kHorizontalPadding16,
                            vertical: AppConstants.kVerticalPadding10))),
                    child: Text(
                      'Click Here',
                      style: TextStyles.font16White700Weight,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}