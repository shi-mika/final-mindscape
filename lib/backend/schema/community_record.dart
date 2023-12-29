import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CommunityRecord extends FirestoreRecord {
  CommunityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "postTitle" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "photoPost" field.
  String? _photoPost;
  String get photoPost => _photoPost ?? '';
  bool hasPhotoPost() => _photoPost != null;

  // "user_creater" field.
  String? _userCreater;
  String get userCreater => _userCreater ?? '';
  bool hasUserCreater() => _userCreater != null;

  // "photo_id" field.
  String? _photoId;
  String get photoId => _photoId ?? '';
  bool hasPhotoId() => _photoId != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _content = snapshotData['content'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _postTitle = snapshotData['postTitle'] as String?;
    _photoPost = snapshotData['photoPost'] as String?;
    _userCreater = snapshotData['user_creater'] as String?;
    _photoId = snapshotData['photo_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('community');

  static Stream<CommunityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityRecord.fromSnapshot(s));

  static Future<CommunityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityRecord.fromSnapshot(s));

  static CommunityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityRecordData({
  String? uid,
  String? content,
  DateTime? date,
  String? postTitle,
  String? photoPost,
  String? userCreater,
  String? photoId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'content': content,
      'date': date,
      'postTitle': postTitle,
      'photoPost': photoPost,
      'user_creater': userCreater,
      'photo_id': photoId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityRecordDocumentEquality implements Equality<CommunityRecord> {
  const CommunityRecordDocumentEquality();

  @override
  bool equals(CommunityRecord? e1, CommunityRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.content == e2?.content &&
        e1?.date == e2?.date &&
        e1?.postTitle == e2?.postTitle &&
        e1?.photoPost == e2?.photoPost &&
        e1?.userCreater == e2?.userCreater &&
        e1?.photoId == e2?.photoId;
  }

  @override
  int hash(CommunityRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.content,
        e?.date,
        e?.postTitle,
        e?.photoPost,
        e?.userCreater,
        e?.photoId
      ]);

  @override
  bool isValidKey(Object? o) => o is CommunityRecord;
}
