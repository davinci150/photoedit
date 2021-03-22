import 'package:flutter/cupertino.dart';

abstract class LoggerProviderI {
  void log(String log);
}

class LoggerProvider implements LoggerProviderI {
  LoggerProvider();

  @override
  void log(String log) {
    debugPrint('@@@@ $log');
  }
}
