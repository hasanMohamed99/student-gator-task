import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../generated/l10n.dart';
import '../../logic/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.kHorizontalPadding14),
        child: Center(
          child: AppTextButton(
            buttonText: S.current.home_show_bottom_sheet,
            onPressed: () => context.read<HomeCubit>().displayBottomSheet(context),
          ),
        ),
      ),
    );
  }
}
