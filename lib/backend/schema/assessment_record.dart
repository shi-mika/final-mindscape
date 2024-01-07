import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AssessmentRecord extends FirestoreRecord {
  AssessmentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "result" field.
  List<String>? _result;
  List<String> get result => _result ?? const [];
  bool hasResult() => _result != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _result = getDataList(snapshotData['result']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assessment');

  static Stream<AssessmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssessmentRecord.fromSnapshot(s));

  static Future<AssessmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssessmentRecord.fromSnapshot(s));

  static AssessmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssessmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssessmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssessmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssessmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssessmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssessmentRecordData({
  String? uid,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssessmentRecordDocumentEquality implements Equality<AssessmentRecord> {
  const AssessmentRecordDocumentEquality();

  @override
  bool equals(AssessmentRecord? e1, AssessmentRecord? e2) {
    const listEquality = ListEquality();
    return e1?.uid == e2?.uid &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.result, e2?.result);
  }

  @override
  int hash(AssessmentRecord? e) =>
      const ListEquality().hash([e?.uid, e?.date, e?.result]);

  @override
  bool isValidKey(Object? o) => o is AssessmentRecord;
}
