import 'package:flutter/material.dart';
import 'package:student_gator_task/core/helpers/spacing.dart';
import 'package:student_gator_task/core/widgets/app_text_button.dart';
import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/colors.dart';
import '../../../../generated/l10n.dart';
import '../widgets/bottom_sheet_appbar.dart';
import '../widgets/bottom_sheet_error_title_card.dart';
import '../widgets/bottom_sheet_file_upload.dart';
import '../widgets/bottom_sheet_success_title_card.dart';
import '../widgets/help_card.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.95,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (_, controller) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppConstants.kRadius20),
          ),
        ),
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstants.kHorizontalPadding20),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * .35,
                    vertical: AppConstants.kHorizontalPadding16),
                child:  LinearProgressIndicator(
                  color: AppColors.gray.withOpacity(.5),
                  value: 100,
                  borderRadius:
                  BorderRadius.circular(AppConstants.kRadius6),
                  minHeight: AppConstants.kHorizontalPadding6,
                ),
              ),
              Expanded(
                child: ListView(
                  controller: controller,
                  children: [
                    const BottomSheetAppbar(),
                    const VerticalSpace(30),
                    const BottomSheetFileUpload(),
                    const VerticalSpace(20),
                    BottomSheetSuccessTitleCard(
                      title: S.current.bottom_sheet_upload_resume,
                      fileName: 'Mohamed_Resume.pdf',
                      fileSize: '200 KB',
                      progressValue: 100,
                    ),
                    const VerticalSpace(20),
                    const BottomSheetErrorTitleCard(
                      fileName: 'HannahBusing_Resume.pdf',
                    ),
                    const VerticalSpace(20),
                    BottomSheetSuccessTitleCard(
                      title: S.current.bottom_sheet_transcript,
                      fileName: 'transcript.pdf',
                      fileSize: '200 KB',
                      progressValue: 100,
                    ),
                    const VerticalSpace(20),
                    BottomSheetSuccessTitleCard(
                      title: S.current.bottom_sheet_certificates,
                      fileName: 'Certificates.pdf',
                      fileSize: '200 KB',
                      progressValue: 100,
                    ),
                    const VerticalSpace(20),
                    const HelpCard(),
                    const VerticalSpace(20),
                    Row(
                      children: [
                        Expanded(
                          child: AppBorderedTextButton(
                            textColor: AppColors.secondBlack,
                            buttonText: 'Cancel',
                            onPressed: () {},
                          ),
                        ),
                        const HorizontalSpace(20),
                        Expanded(
                          child: AppTextButton(
                            buttonText: 'Save',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).systemGestureInsets.top)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






