// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "addNewTask":
            MessageLookupByLibrary.simpleMessage("Añadir Nueva Tarea"),
        "close": MessageLookupByLibrary.simpleMessage("Cerrar"),
        "completed": MessageLookupByLibrary.simpleMessage("Completado"),
        "description": MessageLookupByLibrary.simpleMessage("Descripción"),
        "name": MessageLookupByLibrary.simpleMessage("Nombre"),
        "pending": MessageLookupByLibrary.simpleMessage("Pendiente"),
        "pleaseInsertDescription": MessageLookupByLibrary.simpleMessage(
            "Por favor, escriba la descripción"),
        "pleaseInsertName": MessageLookupByLibrary.simpleMessage(
            "Por favor, escriba un nombre"),
        "save": MessageLookupByLibrary.simpleMessage("Guardar"),
        "subtitle": MessageLookupByLibrary.simpleMessage("Mis Tareas"),
        "title": MessageLookupByLibrary.simpleMessage("Task Trak App")
      };
}
