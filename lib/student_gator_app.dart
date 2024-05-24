import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/helpers/constants.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';
import 'core/theming/styles.dart';
import 'features/localization/logic/locale_cubit.dart';
import 'generated/l10n.dart';

class StudentGatorApp extends StatelessWidget {
  final AppRouter appRouter;
  const StudentGatorApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => getIt<LocaleCubit>(),
        child: BlocBuilder<LocaleCubit, Locale>(
          builder: (context, locale) {
            return MaterialApp(
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              locale: locale,
              title: AppConstants.kAppTitle,
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: AppColors.mainPurple,
                  primary: AppColors.mainPurple,
                  secondary: AppColors.mainPurple,
                ),
                scaffoldBackgroundColor: AppColors.offWhite,
                splashColor: Colors.transparent,
                tooltipTheme: TooltipThemeData(
                  textStyle: TextStyles.font14White400Weight,
                  preferBelow: false,
                ),
                fontFamily: AppConstants.kMainFont,
              ),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: appRouter.generateRoute,
              initialRoute: Routes.homeScreen,
            );
          },
        ),
      ),
    );
  }
}
