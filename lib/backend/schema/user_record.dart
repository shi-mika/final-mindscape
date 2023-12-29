import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "birthDate" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "specialty" field.
  String? _specialty;
  String get specialty => _specialty ?? '';
  bool hasSpecialty() => _specialty != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _username = snapshotData['username'] as String?;
    _password = snapshotData['password'] as String?;
    _role = snapshotData['role'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _email = snapshotData['email'] as String?;
    _birthDate = snapshotData['birthDate'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
    _address = snapshotData['address'] as String?;
    _specialty = snapshotData['specialty'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? uid,
  String? username,
  String? password,
  String? role,
  String? firstName,
  String? lastName,
  String? email,
  DateTime? birthDate,
  String? gender,
  String? address,
  String? specialty,
  DateTime? createdTime,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  DateTime? lastActiveTime,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'username': username,
      'password': password,
      'role': role,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'birthDate': birthDate,
      'gender': gender,
      'address': address,
      'specialty': specialty,
      'created_time': createdTime,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'last_active_time': lastActiveTime,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.username == e2?.username &&
        e1?.password == e2?.password &&
        e1?.role == e2?.role &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.email == e2?.email &&
        e1?.birthDate == e2?.birthDate &&
        e1?.gender == e2?.gender &&
        e1?.address == e2?.address &&
        e1?.specialty == e2?.specialty &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.title == e2?.title;
  }

  @override
  int hash(UserRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.username,
        e?.password,
        e?.role,
        e?.firstName,
        e?.lastName,
        e?.email,
        e?.birthDate,
        e?.gender,
        e?.address,
        e?.specialty,
        e?.createdTime,
        e?.displayName,
        e?.photoUrl,
        e?.phoneNumber,
        e?.lastActiveTime,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
