import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BslSignsRecord extends FirestoreRecord {
  BslSignsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imgUrlLink" field.
  String? _imgUrlLink;
  String get imgUrlLink => _imgUrlLink ?? '';
  bool hasImgUrlLink() => _imgUrlLink != null;

  void _initializeFields() {
    _imgUrlLink = snapshotData['imgUrlLink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bslSigns');

  static Stream<BslSignsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BslSignsRecord.fromSnapshot(s));

  static Future<BslSignsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BslSignsRecord.fromSnapshot(s));

  static BslSignsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BslSignsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BslSignsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BslSignsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BslSignsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BslSignsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBslSignsRecordData({
  String? imgUrlLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imgUrlLink': imgUrlLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class BslSignsRecordDocumentEquality implements Equality<BslSignsRecord> {
  const BslSignsRecordDocumentEquality();

  @override
  bool equals(BslSignsRecord? e1, BslSignsRecord? e2) {
    return e1?.imgUrlLink == e2?.imgUrlLink;
  }

  @override
  int hash(BslSignsRecord? e) => const ListEquality().hash([e?.imgUrlLink]);

  @override
  bool isValidKey(Object? o) => o is BslSignsRecord;
}
