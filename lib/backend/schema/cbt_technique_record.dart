import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CbtTechniqueRecord extends FirestoreRecord {
  CbtTechniqueRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "cbt_name" field.
  String? _cbtName;
  String get cbtName => _cbtName ?? '';
  bool hasCbtName() => _cbtName != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _cbtName = snapshotData['cbt_name'] as String?;
    _category = snapshotData['category'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cbt_technique');

  static Stream<CbtTechniqueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CbtTechniqueRecord.fromSnapshot(s));

  static Future<CbtTechniqueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CbtTechniqueRecord.fromSnapshot(s));

  static CbtTechniqueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CbtTechniqueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CbtTechniqueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CbtTechniqueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CbtTechniqueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CbtTechniqueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCbtTechniqueRecordData({
  String? uid,
  String? cbtName,
  String? category,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'cbt_name': cbtName,
      'category': category,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class CbtTechniqueRecordDocumentEquality
    implements Equality<CbtTechniqueRecord> {
  const CbtTechniqueRecordDocumentEquality();

  @override
  bool equals(CbtTechniqueRecord? e1, CbtTechniqueRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.cbtName == e2?.cbtName &&
        e1?.category == e2?.category &&
        e1?.date == e2?.date;
  }

  @override
  int hash(CbtTechniqueRecord? e) =>
      const ListEquality().hash([e?.uid, e?.cbtName, e?.category, e?.date]);

  @override
  bool isValidKey(Object? o) => o is CbtTechniqueRecord;
}
