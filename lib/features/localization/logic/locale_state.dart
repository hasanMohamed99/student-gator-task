import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'locale_state.freezed.dart';

@freezed
abstract class LocaleState<T> with _$LocaleState<T> {
  const factory LocaleState.changeLanguage({
    required Locale locale,
  }) = _ChangeLanguage;
}
