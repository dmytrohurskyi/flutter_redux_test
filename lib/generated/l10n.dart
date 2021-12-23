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

  /// `Kyiv`
  String get Kyiv {
    return Intl.message(
      'Kyiv',
      name: 'Kyiv',
      desc: '',
      args: [],
    );
  }

  /// `Odesa`
  String get Odesa {
    return Intl.message(
      'Odesa',
      name: 'Odesa',
      desc: '',
      args: [],
    );
  }

  /// `Lviv`
  String get Lviv {
    return Intl.message(
      'Lviv',
      name: 'Lviv',
      desc: '',
      args: [],
    );
  }

  /// `New York`
  String get NewYork {
    return Intl.message(
      'New York',
      name: 'NewYork',
      desc: '',
      args: [],
    );
  }

  /// `London`
  String get London {
    return Intl.message(
      'London',
      name: 'London',
      desc: '',
      args: [],
    );
  }

  /// `Loading weather data...`
  String get loadingWeatherDataMsg {
    return Intl.message(
      'Loading weather data...',
      name: 'loadingWeatherDataMsg',
      desc: '',
      args: [],
    );
  }

  /// `Some error occurred!\n {errorText}`
  String someErrorOccurredMsg(Object errorText) {
    return Intl.message(
      'Some error occurred!\n $errorText',
      name: 'someErrorOccurredMsg',
      desc: '',
      args: [errorText],
    );
  }

  /// `Updated {date} at {time}`
  String updatedAt(Object date, Object time) {
    return Intl.message(
      'Updated $date at $time',
      name: 'updatedAt',
      desc: '',
      args: [date, time],
    );
  }

  /// `FORECAST`
  String get forecastBtnTitle {
    return Intl.message(
      'FORECAST',
      name: 'forecastBtnTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pressure`
  String get pressureTitle {
    return Intl.message(
      'Pressure',
      name: 'pressureTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sunrise`
  String get sunriseTitle {
    return Intl.message(
      'Sunrise',
      name: 'sunriseTitle',
      desc: '',
      args: [],
    );
  }

  /// `Humidity`
  String get humidityTitle {
    return Intl.message(
      'Humidity',
      name: 'humidityTitle',
      desc: '',
      args: [],
    );
  }

  /// `Wind Speeed`
  String get windSpeedTitle {
    return Intl.message(
      'Wind Speeed',
      name: 'windSpeedTitle',
      desc: '',
      args: [],
    );
  }

  /// `m/s`
  String get metersPerSec {
    return Intl.message(
      'm/s',
      name: 'metersPerSec',
      desc: '',
      args: [],
    );
  }

  /// `Sunset`
  String get sunsetTitle {
    return Intl.message(
      'Sunset',
      name: 'sunsetTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'uk', countryCode: 'UA'),
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
