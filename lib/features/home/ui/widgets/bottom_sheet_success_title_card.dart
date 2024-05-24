import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/assets.dart';

class BottomSheetSuccessTitleCard extends StatelessWidget {
  final String title;
  final String fileName;
  final String fileSize;
  final double progressValue;
  const BottomSheetSuccessTitleCard({
    super.key,
    required this.title,
    required this.fileName,
    required this.fileSize,
    required this.progressValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font16SecondBlack600Weight,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const VerticalSpace(12),
        Card(
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
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Assets.iconDocument,
                      colorFilter: const ColorFilter.mode(
                        AppColors.thirdBlack,
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
                                fileName,
                                style: TextStyles.font14ThirdBlack700Weight,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ),
                          Text(
                            fileSize,
                            style: TextStyles.font12Gray400Weight,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      Assets.iconDone,
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
                const VerticalSpace(10),
                Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        color: AppColors.green,
                        value: progressValue,
                        borderRadius:
                        BorderRadius.circular(AppConstants.kRadius6),
                        minHeight: AppConstants.kHorizontalPadding6,
                      ),
                    ),
                    const HorizontalSpace(10),
                    Text(
                      '${progressValue.round()}%',
                      style: TextStyles.font12ThirdBlack500Weight,
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}