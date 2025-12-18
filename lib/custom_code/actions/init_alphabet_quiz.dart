// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// i need to generate a list of four distinct integers between 0 and 25
import 'dart:math';

Future initAlphabetQuiz() async {
  final random = Random();
  final Set<int> distinctNumbers = <int>{};
  final List<String> alphabet = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  final List<String> answers = <String>[];

  while (distinctNumbers.length < 4) {
    // in set, each object can only occur once
    distinctNumbers.add(random.nextInt(26));
  }

  // ordered list obtained of four unique indices for alphabet list
  final List<int> distinctNumbersList = distinctNumbers.toList();

  for (int i = 0; i < 4; i++) {
    // populate answers list with letters indexed by distinct numbers
    answers.add(alphabet[distinctNumbersList[i]]);
  }
}
