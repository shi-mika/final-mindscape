import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JournalRecord extends FirestoreRecord {
  JournalRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "journalId" field.
  int? _journalId;
  int get journalId => _journalId ?? 0;
  bool hasJournalId() => _journalId != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  void _initializeFields() {
    _journalId = castToType<int>(snapshotData['journalId']);
    _uid = snapshotData['uid'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('journal');

  static Stream<JournalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JournalRecord.fromSnapshot(s));

  static Future<JournalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JournalRecord.fromSnapshot(s));

  static JournalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JournalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JournalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JournalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JournalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JournalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJournalRecordData({
  int? journalId,
  String? uid,
  DateTime? date,
  String? title,
  String? content,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'journalId': journalId,
      'uid': uid,
      'date': date,
      'title': title,
      'content': content,
    }.withoutNulls,
  );

  return firestoreData;
}

class JournalRecordDocumentEquality implements Equality<JournalRecord> {
  const JournalRecordDocumentEquality();

  @override
  bool equals(JournalRecord? e1, JournalRecord? e2) {
    return e1?.journalId == e2?.journalId &&
        e1?.uid == e2?.uid &&
        e1?.date == e2?.date &&
        e1?.title == e2?.title &&
        e1?.content == e2?.content;
  }

  @override
  int hash(JournalRecord? e) => const ListEquality()
      .hash([e?.journalId, e?.uid, e?.date, e?.title, e?.content]);

  @override
  bool isValidKey(Object? o) => o is JournalRecord;
}
