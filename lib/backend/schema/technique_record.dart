import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TechniqueRecord extends FirestoreRecord {
  TechniqueRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  bool hasCover() => _cover != null;

  // "technique_name" field.
  String? _techniqueName;
  String get techniqueName => _techniqueName ?? '';
  bool hasTechniqueName() => _techniqueName != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _order = castToType<int>(snapshotData['order']);
    _cover = snapshotData['cover'] as String?;
    _techniqueName = snapshotData['technique_name'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('technique');

  static Stream<TechniqueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TechniqueRecord.fromSnapshot(s));

  static Future<TechniqueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TechniqueRecord.fromSnapshot(s));

  static TechniqueRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TechniqueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TechniqueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TechniqueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TechniqueRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TechniqueRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTechniqueRecordData({
  String? uid,
  String? description,
  String? category,
  int? order,
  String? cover,
  String? techniqueName,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'description': description,
      'category': category,
      'order': order,
      'cover': cover,
      'technique_name': techniqueName,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class TechniqueRecordDocumentEquality implements Equality<TechniqueRecord> {
  const TechniqueRecordDocumentEquality();

  @override
  bool equals(TechniqueRecord? e1, TechniqueRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        e1?.order == e2?.order &&
        e1?.cover == e2?.cover &&
        e1?.techniqueName == e2?.techniqueName &&
        e1?.date == e2?.date;
  }

  @override
  int hash(TechniqueRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.description,
        e?.category,
        e?.order,
        e?.cover,
        e?.techniqueName,
        e?.date
      ]);

  @override
  bool isValidKey(Object? o) => o is TechniqueRecord;
}
