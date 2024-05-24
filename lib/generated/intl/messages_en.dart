// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "bottom_sheet_appbar_text": MessageLookupByLibrary.simpleMessage(
            "Please Upload your CV, Transcript, Certificates"),
        "bottom_sheet_appbar_title":
            MessageLookupByLibrary.simpleMessage("Academic documents"),
        "bottom_sheet_certificates": MessageLookupByLibrary.simpleMessage(
            "Copy Of Degrees Obtained ( Certificates )"),
        "bottom_sheet_transcript":
            MessageLookupByLibrary.simpleMessage("Your transcript"),
        "bottom_sheet_upload_resume":
            MessageLookupByLibrary.simpleMessage("Resume"),
        "bottom_sheet_upload_text":
            MessageLookupByLibrary.simpleMessage("(Max. File size: 25 MB)"),
        "bottom_sheet_upload_title":
            MessageLookupByLibrary.simpleMessage("Click to Upload"),
        "home_show_bottom_sheet":
            MessageLookupByLibrary.simpleMessage("Show Bottom Sheet")
      };
}
