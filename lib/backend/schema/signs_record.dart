import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Stores ASL (American Sign Language) alphabet data from A–Z.
///
/// Each document includes a letter and its corresponding image URL stored in
/// Firebase Storage.
/// Used for displaying signs and creating quizzes in the app.
class SignsRecord extends FirestoreRecord {
  SignsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imageurl" field.
  String? _imageurl;
  String get imageurl => _imageurl ?? '';
  bool hasImageurl() => _imageurl != null;

  void _initializeFields() {
    _imageurl = snapshotData['imageurl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Signs');

  static Stream<SignsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SignsRecord.fromSnapshot(s));

  static Future<SignsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SignsRecord.fromSnapshot(s));

  static SignsRecord fromSnapshot(DocumentSnapshot snapshot) => SignsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SignsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SignsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SignsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SignsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSignsRecordData({
  String? imageurl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imageurl': imageurl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SignsRecordDocumentEquality implements Equality<SignsRecord> {
  const SignsRecordDocumentEquality();

  @override
  bool equals(SignsRecord? e1, SignsRecord? e2) {
    return e1?.imageurl == e2?.imageurl;
  }

  @override
  int hash(SignsRecord? e) => const ListEquality().hash([e?.imageurl]);

  @override
  bool isValidKey(Object? o) => o is SignsRecord;
}
