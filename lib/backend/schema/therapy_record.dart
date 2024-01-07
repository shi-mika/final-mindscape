import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TherapyRecord extends FirestoreRecord {
  TherapyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "therapy_id" field.
  String? _therapyId;
  String get therapyId => _therapyId ?? '';
  bool hasTherapyId() => _therapyId != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  bool hasCover() => _cover != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "minute" field.
  String? _minute;
  String get minute => _minute ?? '';
  bool hasMinute() => _minute != null;

  void _initializeFields() {
    _therapyId = snapshotData['therapy_id'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _cover = snapshotData['cover'] as String?;
    _name = snapshotData['name'] as String?;
    _content = snapshotData['content'] as String?;
    _category = getDataList(snapshotData['category']);
    _minute = snapshotData['minute'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('therapy');

  static Stream<TherapyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TherapyRecord.fromSnapshot(s));

  static Future<TherapyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TherapyRecord.fromSnapshot(s));

  static TherapyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TherapyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TherapyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TherapyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TherapyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TherapyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTherapyRecordData({
  String? therapyId,
  DateTime? date,
  String? cover,
  String? name,
  String? content,
  String? minute,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'therapy_id': therapyId,
      'date': date,
      'cover': cover,
      'name': name,
      'content': content,
      'minute': minute,
    }.withoutNulls,
  );

  return firestoreData;
}

class TherapyRecordDocumentEquality implements Equality<TherapyRecord> {
  const TherapyRecordDocumentEquality();

  @override
  bool equals(TherapyRecord? e1, TherapyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.therapyId == e2?.therapyId &&
        e1?.date == e2?.date &&
        e1?.cover == e2?.cover &&
        e1?.name == e2?.name &&
        e1?.content == e2?.content &&
        listEquality.equals(e1?.category, e2?.category) &&
        e1?.minute == e2?.minute;
  }

  @override
  int hash(TherapyRecord? e) => const ListEquality().hash([
        e?.therapyId,
        e?.date,
        e?.cover,
        e?.name,
        e?.content,
        e?.category,
        e?.minute
      ]);

  @override
  bool isValidKey(Object? o) => o is TherapyRecord;
}
