// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignMapStruct extends FFFirebaseStruct {
  SignMapStruct({
    String? imageURL,
    String? letter,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _imageURL = imageURL,
        _letter = letter,
        super(firestoreUtilData);

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  set imageURL(String? val) => _imageURL = val;

  bool hasImageURL() => _imageURL != null;

  // "letter" field.
  String? _letter;
  String get letter => _letter ?? 'A';
  set letter(String? val) => _letter = val;

  bool hasLetter() => _letter != null;

  static SignMapStruct fromMap(Map<String, dynamic> data) => SignMapStruct(
        imageURL: data['imageURL'] as String?,
        letter: data['letter'] as String?,
      );

  static SignMapStruct? maybeFromMap(dynamic data) =>
      data is Map ? SignMapStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'imageURL': _imageURL,
        'letter': _letter,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imageURL': serializeParam(
          _imageURL,
          ParamType.String,
        ),
        'letter': serializeParam(
          _letter,
          ParamType.String,
        ),
      }.withoutNulls;

  static SignMapStruct fromSerializableMap(Map<String, dynamic> data) =>
      SignMapStruct(
        imageURL: deserializeParam(
          data['imageURL'],
          ParamType.String,
          false,
        ),
        letter: deserializeParam(
          data['letter'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SignMapStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SignMapStruct &&
        imageURL == other.imageURL &&
        letter == other.letter;
  }

  @override
  int get hashCode => const ListEquality().hash([imageURL, letter]);
}

SignMapStruct createSignMapStruct({
  String? imageURL,
  String? letter,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SignMapStruct(
      imageURL: imageURL,
      letter: letter,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SignMapStruct? updateSignMapStruct(
  SignMapStruct? signMap, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    signMap
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSignMapStructData(
  Map<String, dynamic> firestoreData,
  SignMapStruct? signMap,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (signMap == null) {
    return;
  }
  if (signMap.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && signMap.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final signMapData = getSignMapFirestoreData(signMap, forFieldValue);
  final nestedData = signMapData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = signMap.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSignMapFirestoreData(
  SignMapStruct? signMap, [
  bool forFieldValue = false,
]) {
  if (signMap == null) {
    return {};
  }
  final firestoreData = mapToFirestore(signMap.toMap());

  // Add any Firestore field values
  signMap.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSignMapListFirestoreData(
  List<SignMapStruct>? signMaps,
) =>
    signMaps?.map((e) => getSignMapFirestoreData(e, true)).toList() ?? [];
