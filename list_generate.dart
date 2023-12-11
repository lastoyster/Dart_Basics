import 'package:flutter/foundation.dart';
import 'dart:math';

void main() {
  // Define how many items you want to generate
  const length = 5;

final random = Random();

List<Map<String, dynamic>> items= 
List<Map<String,dynamic>>.generate( 
  length,
(index)=> 
{'id': index, 'name': 'Item $index', 'price': random.nextInt(100)});

  if (kDebugMode) {
    print(items);
  }
}
