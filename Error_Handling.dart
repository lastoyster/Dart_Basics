import 'package:flutter/foundation.dart' show debugPrint;

void main() {
  String input = '-10'; // A string that can be parsed into an integer
  int number;
  try {
    number = int.parse(input); // This might throw a FormatException

    debugPrint('The number is $number.');

    if (number < 0) {
      throw ArgumentError(
          'The number cannot be negative.'); // This might throw an ArgumentError
    }
  } on FormatException catch (e) {
    debugPrint('The input is not a valid number: $e');
  } on ArgumentError catch (e) {
    debugPrint('The input is not acceptable: $e');
  }
}