import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _signLanguage = prefs.getString('ff_signLanguage') ?? _signLanguage;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// four distinct capital letters
  List<String> _alphabetQuizAnswers = ['J', 'Z', 'F', 'Q'];
  List<String> get alphabetQuizAnswers => _alphabetQuizAnswers;
  set alphabetQuizAnswers(List<String> value) {
    _alphabetQuizAnswers = value;
  }

  void addToAlphabetQuizAnswers(String value) {
    alphabetQuizAnswers.add(value);
  }

  void removeFromAlphabetQuizAnswers(String value) {
    alphabetQuizAnswers.remove(value);
  }

  void removeAtIndexFromAlphabetQuizAnswers(int index) {
    alphabetQuizAnswers.removeAt(index);
  }

  void updateAlphabetQuizAnswersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    alphabetQuizAnswers[index] = updateFn(_alphabetQuizAnswers[index]);
  }

  void insertAtIndexInAlphabetQuizAnswers(int index, String value) {
    alphabetQuizAnswers.insert(index, value);
  }

  /// sign language chosen by user on Lessons dropdown.
  ///
  /// persists between app restarts
  String _signLanguage = 'ASL';
  String get signLanguage => _signLanguage;
  set signLanguage(String value) {
    _signLanguage = value;
    prefs.setString('ff_signLanguage', value);
  }

  double _payment = 0.0;
  double get payment => _payment;
  set payment(double value) {
    _payment = value;
  }

  int _newLevel = 0;
  int get newLevel => _newLevel;
  set newLevel(int value) {
    _newLevel = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
