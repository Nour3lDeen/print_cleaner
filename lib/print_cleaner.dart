import 'dart:io';

class PrintCleaner {
  static void replacePrintWithDebugPrint(String path) {
    final directory = Directory(path);

    if (!directory.existsSync()) {
      print('❌ Directory does not exist: $path');
      return;
    }

    final dartFiles = directory
        .listSync(recursive: true)
        .where((file) => file is File && file.path.endsWith('.dart'));

    for (var file in dartFiles) {
      final filePath = file.path;
      final originalContent = File(filePath).readAsStringSync();

      // Replace print with debugPrint
      final updatedContent = originalContent.replaceAllMapped(
        RegExp(r'print\s*\(\s*(.*?)\s*\)\s*;'),
            (match) => 'debugPrint(${match[1]?.trim()});',
      );

      File(filePath).writeAsStringSync(updatedContent);
      print('✅ Updated: $filePath');
    }

    print('🎉 All print statements have been replaced with debugPrint.');
  }
}
