// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static String m0(errorText) => "Some error occurred!\n ${errorText}";

  static String m1(date, time) => "Updated ${date} at ${time}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Kyiv": MessageLookupByLibrary.simpleMessage("Kyiv"),
        "London": MessageLookupByLibrary.simpleMessage("London"),
        "Lviv": MessageLookupByLibrary.simpleMessage("Lviv"),
        "NewYork": MessageLookupByLibrary.simpleMessage("New York"),
        "Odesa": MessageLookupByLibrary.simpleMessage("Odesa"),
        "forecastBtnTitle": MessageLookupByLibrary.simpleMessage("FORECAST"),
        "humidityTitle": MessageLookupByLibrary.simpleMessage("Humidity"),
        "loadingWeatherDataMsg":
            MessageLookupByLibrary.simpleMessage("Loading weather data..."),
        "metersPerSec": MessageLookupByLibrary.simpleMessage("m/s"),
        "pressureTitle": MessageLookupByLibrary.simpleMessage("Pressure"),
        "someErrorOccurredMsg": m0,
        "sunriseTitle": MessageLookupByLibrary.simpleMessage("Sunrise"),
        "sunsetTitle": MessageLookupByLibrary.simpleMessage("Sunset"),
        "updatedAt": m1,
        "windSpeedTitle": MessageLookupByLibrary.simpleMessage("Wind Speeed")
      };
}
