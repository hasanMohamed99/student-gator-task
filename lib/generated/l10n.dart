// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Show Bottom Sheet`
  String get home_show_bottom_sheet {
    return Intl.message(
      'Show Bottom Sheet',
      name: 'home_show_bottom_sheet',
      desc: '',
      args: [],
    );
  }

  /// `Academic documents`
  String get bottom_sheet_appbar_title {
    return Intl.message(
      'Academic documents',
      name: 'bottom_sheet_appbar_title',
      desc: '',
      args: [],
    );
  }

  /// `Please Upload your CV, Transcript, Certificates`
  String get bottom_sheet_appbar_text {
    return Intl.message(
      'Please Upload your CV, Transcript, Certificates',
      name: 'bottom_sheet_appbar_text',
      desc: '',
      args: [],
    );
  }

  /// `Click to Upload`
  String get bottom_sheet_upload_title {
    return Intl.message(
      'Click to Upload',
      name: 'bottom_sheet_upload_title',
      desc: '',
      args: [],
    );
  }

  /// `(Max. File size: 25 MB)`
  String get bottom_sheet_upload_text {
    return Intl.message(
      '(Max. File size: 25 MB)',
      name: 'bottom_sheet_upload_text',
      desc: '',
      args: [],
    );
  }

  /// `Resume`
  String get bottom_sheet_upload_resume {
    return Intl.message(
      'Resume',
      name: 'bottom_sheet_upload_resume',
      desc: '',
      args: [],
    );
  }

  /// `Your transcript`
  String get bottom_sheet_transcript {
    return Intl.message(
      'Your transcript',
      name: 'bottom_sheet_transcript',
      desc: '',
      args: [],
    );
  }

  /// `Copy Of Degrees Obtained ( Certificates )`
  String get bottom_sheet_certificates {
    return Intl.message(
      'Copy Of Degrees Obtained ( Certificates )',
      name: 'bottom_sheet_certificates',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
