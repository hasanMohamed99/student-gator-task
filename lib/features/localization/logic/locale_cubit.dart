import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/helpers/constants.dart';
import '../data/repo/locale_repo.dart';

class LocaleCubit extends Cubit<Locale> {
  final LocaleRepo _localeRepo;
  LocaleCubit(this._localeRepo) : super(Locale(_localeRepo.getLanguage(languageKey: AppConstants.kLangKey)?? Intl.getCurrentLocale()));

  void setLanguage(String languageCode){
    _localeRepo.setLanguage(languageNameKey: AppConstants.kLangKey, languageName: languageCode);
    emit(Locale(languageCode));
  }
  void changeLocale(String languageCode) => setLanguage(languageCode);
}