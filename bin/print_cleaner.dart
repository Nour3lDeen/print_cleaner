import 'dart:io';
import 'package:print_cleaner/print_cleaner.dart';

void main(List<String> arguments) {
  final path = arguments.isEmpty ? Directory.current.path : arguments[0];

  PrintCleaner.replacePrintWithDebugPrint(path);
}
