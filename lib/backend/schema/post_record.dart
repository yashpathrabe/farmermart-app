import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "EnterTitle" field.
  String? _enterTitle;
  String get enterTitle => _enterTitle ?? '';
  bool hasEnterTitle() => _enterTitle != null;

  // "ItemQuantity" field.
  double? _itemQuantity;
  double get itemQuantity => _itemQuantity ?? 0.0;
  bool hasItemQuantity() => _itemQuantity != null;

  // "ExpectedPrice" field.
  double? _expectedPrice;
  double get expectedPrice => _expectedPrice ?? 0.0;
  bool hasExpectedPrice() => _expectedPrice != null;

  // "AvailabeFrom" field.
  DateTime? _availabeFrom;
  DateTime? get availabeFrom => _availabeFrom;
  bool hasAvailabeFrom() => _availabeFrom != null;

  // "EnterMobileNo" field.
  int? _enterMobileNo;
  int get enterMobileNo => _enterMobileNo ?? 0;
  bool hasEnterMobileNo() => _enterMobileNo != null;

  // "SelectArea" field.
  String? _selectArea;
  String get selectArea => _selectArea ?? '';
  bool hasSelectArea() => _selectArea != null;

  // "UplaodImages" field.
  String? _uplaodImages;
  String get uplaodImages => _uplaodImages ?? '';
  bool hasUplaodImages() => _uplaodImages != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _category = snapshotData['Category'] as String?;
    _enterTitle = snapshotData['EnterTitle'] as String?;
    _itemQuantity = castToType<double>(snapshotData['ItemQuantity']);
    _expectedPrice = castToType<double>(snapshotData['ExpectedPrice']);
    _availabeFrom = snapshotData['AvailabeFrom'] as DateTime?;
    _enterMobileNo = castToType<int>(snapshotData['EnterMobileNo']);
    _selectArea = snapshotData['SelectArea'] as String?;
    _uplaodImages = snapshotData['UplaodImages'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  String? category,
  String? enterTitle,
  double? itemQuantity,
  double? expectedPrice,
  DateTime? availabeFrom,
  int? enterMobileNo,
  String? selectArea,
  String? uplaodImages,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Category': category,
      'EnterTitle': enterTitle,
      'ItemQuantity': itemQuantity,
      'ExpectedPrice': expectedPrice,
      'AvailabeFrom': availabeFrom,
      'EnterMobileNo': enterMobileNo,
      'SelectArea': selectArea,
      'UplaodImages': uplaodImages,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    return e1?.category == e2?.category &&
        e1?.enterTitle == e2?.enterTitle &&
        e1?.itemQuantity == e2?.itemQuantity &&
        e1?.expectedPrice == e2?.expectedPrice &&
        e1?.availabeFrom == e2?.availabeFrom &&
        e1?.enterMobileNo == e2?.enterMobileNo &&
        e1?.selectArea == e2?.selectArea &&
        e1?.uplaodImages == e2?.uplaodImages &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([
        e?.category,
        e?.enterTitle,
        e?.itemQuantity,
        e?.expectedPrice,
        e?.availabeFrom,
        e?.enterMobileNo,
        e?.selectArea,
        e?.uplaodImages,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
