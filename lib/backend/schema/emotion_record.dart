import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EmotionRecord extends FirestoreRecord {
  EmotionRecord._(
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

  // "emotion" field.
  String? _emotion;
  String get emotion => _emotion ?? '';
  bool hasEmotion() => _emotion != null;

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _emotion = snapshotData['emotion'] as String?;
    _day = snapshotData['day'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emotion');

  static Stream<EmotionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmotionRecord.fromSnapshot(s));

  static Future<EmotionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmotionRecord.fromSnapshot(s));

  static EmotionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmotionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmotionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmotionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmotionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmotionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmotionRecordData({
  String? uid,
  DateTime? date,
  String? emotion,
  String? day,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'date': date,
      'emotion': emotion,
      'day': day,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmotionRecordDocumentEquality implements Equality<EmotionRecord> {
  const EmotionRecordDocumentEquality();

  @override
  bool equals(EmotionRecord? e1, EmotionRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.date == e2?.date &&
        e1?.emotion == e2?.emotion &&
        e1?.day == e2?.day;
  }

  @override
  int hash(EmotionRecord? e) =>
      const ListEquality().hash([e?.uid, e?.date, e?.emotion, e?.day]);

  @override
  bool isValidKey(Object? o) => o is EmotionRecord;
}
