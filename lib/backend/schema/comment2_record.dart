import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class Comment2Record extends FirestoreRecord {
  Comment2Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "post_id" field.
  String? _postId;
  String get postId => _postId ?? '';
  bool hasPostId() => _postId != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "sender_name" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "sender_photo" field.
  String? _senderPhoto;
  String get senderPhoto => _senderPhoto ?? '';
  bool hasSenderPhoto() => _senderPhoto != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _postId = snapshotData['post_id'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _senderName = snapshotData['sender_name'] as String?;
    _senderPhoto = snapshotData['sender_photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comment2');

  static Stream<Comment2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Comment2Record.fromSnapshot(s));

  static Future<Comment2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Comment2Record.fromSnapshot(s));

  static Comment2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Comment2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Comment2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Comment2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Comment2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Comment2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComment2RecordData({
  String? content,
  DateTime? dateCreated,
  String? postId,
  String? userId,
  String? senderName,
  String? senderPhoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'date_created': dateCreated,
      'post_id': postId,
      'user_id': userId,
      'sender_name': senderName,
      'sender_photo': senderPhoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class Comment2RecordDocumentEquality implements Equality<Comment2Record> {
  const Comment2RecordDocumentEquality();

  @override
  bool equals(Comment2Record? e1, Comment2Record? e2) {
    return e1?.content == e2?.content &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.postId == e2?.postId &&
        e1?.userId == e2?.userId &&
        e1?.senderName == e2?.senderName &&
        e1?.senderPhoto == e2?.senderPhoto;
  }

  @override
  int hash(Comment2Record? e) => const ListEquality().hash([
        e?.content,
        e?.dateCreated,
        e?.postId,
        e?.userId,
        e?.senderName,
        e?.senderPhoto
      ]);

  @override
  bool isValidKey(Object? o) => o is Comment2Record;
}
