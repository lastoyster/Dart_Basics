import 'package:flutter/foundation.dart' show debugPrint;
// Define a function that removes multiple spaces from a string
String removeMultipleSpaces(String input) {
  // Create a RegExp object with the pattern r"\s+"
  RegExp whitespaceRE = RegExp(r"\s+");

  // Replace all the white space characters with a single space
  String output = input.replaceAll(whitespaceRE, " ");

  // Return the resulting string
  return output;
}

void main() {
  String input = "Hi   buddy. Welcome    to    Dart  programming.";
  String output = removeMultipleSpaces(input);
  debugPrint(output);
}