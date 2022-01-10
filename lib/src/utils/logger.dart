import 'dart:developer';

class Logger {
  static void exception(Exception exception) {
    exception.toString();
  }

  static void logger(Object any, String message) {
    log(message, name: any.toString());
  }
}
