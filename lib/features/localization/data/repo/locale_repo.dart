import '../../../../core/local/shared_pref_service/shared_pref_service.dart';

class LocaleRepo {
  final SharedPrefService _sharedPrefService;

  LocaleRepo(this._sharedPrefService);

  void setLanguage(
      {required String languageNameKey, required String languageName}) {
    _sharedPrefService.setString(key: languageNameKey, value: languageName);
  }

  String? getLanguage({required String languageKey}) {
    return _sharedPrefService.getString(key: languageKey);
  }
}
