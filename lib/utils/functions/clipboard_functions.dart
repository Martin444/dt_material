import 'package:clipboard/clipboard.dart';

class ClipboardFunctions {
  static Future<String> copyToClipboard(String text) async {
    try {
      await FlutterClipboard.copy(text);
      return 'Copied to clipboard: $text';
    } catch (e) {
      rethrow;
    }
  }

  static String pasteFromClipboard() {
    // Implement the logic to paste text from clipboard
    // This is a placeholder implementation
    return 'Pasted text from clipboard';
  }
}
