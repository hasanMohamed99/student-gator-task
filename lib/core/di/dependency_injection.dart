import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/home/logic/home_cubit.dart';
import '../../features/localization/data/repo/locale_repo.dart';
import '../../features/localization/logic/locale_cubit.dart';
import '../local/shared_pref_service/shared_pref_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async{
  // Shared Preferences
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPrefService>(() => SharedPrefService(prefs));

  // Localization
  getIt.registerLazySingleton<LocaleRepo>(() => LocaleRepo(getIt()));
  getIt.registerLazySingleton<LocaleCubit>(() => LocaleCubit(getIt()));

  // Home
  getIt.registerFactory<HomeCubit>(() => HomeCubit());

}