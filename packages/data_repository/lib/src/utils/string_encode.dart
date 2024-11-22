import 'dart:convert';

extension JsonEncodeExtension on String {
  String encode() {
    if (isEmpty) {
      return '';
    }

    String encodedString = jsonEncode(this);
    if (encodedString.length < 2) {
      return '';
    }

    return encodedString.substring(1, encodedString.length - 1);
  }
}