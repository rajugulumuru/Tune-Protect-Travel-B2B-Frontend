import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agency_users_record.g.dart';

abstract class AgencyUsersRecord
    implements Built<AgencyUsersRecord, AgencyUsersRecordBuilder> {
  static Serializer<AgencyUsersRecord> get serializer =>
      _$agencyUsersRecordSerializer;

  @BuiltValueField(wireName: 'UserName')
  String? get userName;

  @BuiltValueField(wireName: 'FirstName')
  String? get firstName;

  @BuiltValueField(wireName: 'LastName')
  String? get lastName;

  @BuiltValueField(wireName: 'DateOfBirth')
  DateTime? get dateOfBirth;

  @BuiltValueField(wireName: 'Branch')
  String? get branch;

  @BuiltValueField(wireName: 'IsAdmin')
  bool? get isAdmin;

  @BuiltValueField(wireName: 'AgencyRef')
  DocumentReference? get agencyRef;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get password;

  @BuiltValueField(wireName: 'IsNewUser')
  bool? get isNewUser;

  @BuiltValueField(wireName: 'LandlineNo')
  String? get landlineNo;

  @BuiltValueField(wireName: 'MobileNo')
  String? get mobileNo;

  @BuiltValueField(wireName: 'AgencyCode')
  String? get agencyCode;

  @BuiltValueField(wireName: 'TempPass')
  String? get tempPass;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AgencyUsersRecordBuilder builder) => builder
    ..userName = ''
    ..firstName = ''
    ..lastName = ''
    ..branch = ''
    ..isAdmin = false
    ..photoUrl = ''
    ..uid = ''
    ..email = ''
    ..displayName = ''
    ..phoneNumber = ''
    ..password = ''
    ..isNewUser = false
    ..landlineNo = ''
    ..mobileNo = ''
    ..agencyCode = ''
    ..tempPass = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agency_users');

  static Stream<AgencyUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AgencyUsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AgencyUsersRecord._();
  factory AgencyUsersRecord([void Function(AgencyUsersRecordBuilder) updates]) =
      _$AgencyUsersRecord;

  static AgencyUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAgencyUsersRecordData({
  String? userName,
  String? firstName,
  String? lastName,
  DateTime? dateOfBirth,
  String? branch,
  bool? isAdmin,
  DocumentReference? agencyRef,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? email,
  String? displayName,
  String? phoneNumber,
  String? password,
  bool? isNewUser,
  String? landlineNo,
  String? mobileNo,
  String? agencyCode,
  String? tempPass,
}) {
  final firestoreData = serializers.toFirestore(
    AgencyUsersRecord.serializer,
    AgencyUsersRecord(
      (a) => a
        ..userName = userName
        ..firstName = firstName
        ..lastName = lastName
        ..dateOfBirth = dateOfBirth
        ..branch = branch
        ..isAdmin = isAdmin
        ..agencyRef = agencyRef
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..email = email
        ..displayName = displayName
        ..phoneNumber = phoneNumber
        ..password = password
        ..isNewUser = isNewUser
        ..landlineNo = landlineNo
        ..mobileNo = mobileNo
        ..agencyCode = agencyCode
        ..tempPass = tempPass,
    ),
  );

  return firestoreData;
}
