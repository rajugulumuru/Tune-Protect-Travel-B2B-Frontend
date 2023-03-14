import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'temp_users_record.g.dart';

abstract class TempUsersRecord
    implements Built<TempUsersRecord, TempUsersRecordBuilder> {
  static Serializer<TempUsersRecord> get serializer =>
      _$tempUsersRecordSerializer;

  String? get email;

  String? get tempPassword;

  DocumentReference? get agencyRef;

  bool? get isActive;

  String? get firstName;

  String? get lastName;

  DateTime? get dateOfBirth;

  String? get landlineNo;

  String? get mobileNo;

  String? get branch;

  bool? get isAdmin;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TempUsersRecordBuilder builder) => builder
    ..email = ''
    ..tempPassword = ''
    ..isActive = false
    ..firstName = ''
    ..lastName = ''
    ..landlineNo = ''
    ..mobileNo = ''
    ..branch = ''
    ..isAdmin = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('temp_users');

  static Stream<TempUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TempUsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TempUsersRecord._();
  factory TempUsersRecord([void Function(TempUsersRecordBuilder) updates]) =
      _$TempUsersRecord;

  static TempUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTempUsersRecordData({
  String? email,
  String? tempPassword,
  DocumentReference? agencyRef,
  bool? isActive,
  String? firstName,
  String? lastName,
  DateTime? dateOfBirth,
  String? landlineNo,
  String? mobileNo,
  String? branch,
  bool? isAdmin,
}) {
  final firestoreData = serializers.toFirestore(
    TempUsersRecord.serializer,
    TempUsersRecord(
      (t) => t
        ..email = email
        ..tempPassword = tempPassword
        ..agencyRef = agencyRef
        ..isActive = isActive
        ..firstName = firstName
        ..lastName = lastName
        ..dateOfBirth = dateOfBirth
        ..landlineNo = landlineNo
        ..mobileNo = mobileNo
        ..branch = branch
        ..isAdmin = isAdmin,
    ),
  );

  return firestoreData;
}
