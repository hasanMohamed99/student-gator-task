import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:student_gator_task/core/helpers/extensions.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../generated/l10n.dart';

class BottomSheetAppbar extends StatelessWidget {
  const BottomSheetAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(S.current.bottom_sheet_appbar_title,
                style: TextStyles.font16SecondBlack600Weight),
            IconButton(
              onPressed: () => context.pop(),
              padding: EdgeInsets.zero,
              visualDensity: VisualDensity.compact,
              style: const ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.zero),
                visualDensity: VisualDensity.compact,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: Icon(
                Icons.close,
                size: 25.r,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        Text(
          S.current.bottom_sheet_appbar_text,
          style: TextStyles.font14Gray400Weight,
        ),
      ],
    );
  }
}
