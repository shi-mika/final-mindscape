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

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _cbtName = snapshotData['cbt_name'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _category = getDataList(snapshotData['category']);
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
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'cbt_name': cbtName,
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
    const listEquality = ListEquality();
    return e1?.uid == e2?.uid &&
        e1?.cbtName == e2?.cbtName &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.category, e2?.category);
  }

  @override
  int hash(CbtTechniqueRecord? e) =>
      const ListEquality().hash([e?.uid, e?.cbtName, e?.date, e?.category]);

  @override
  bool isValidKey(Object? o) => o is CbtTechniqueRecord;
}
