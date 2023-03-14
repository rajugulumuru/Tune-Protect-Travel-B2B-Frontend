import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'agency_details_record.g.dart';

abstract class AgencyDetailsRecord
    implements Built<AgencyDetailsRecord, AgencyDetailsRecordBuilder> {
  static Serializer<AgencyDetailsRecord> get serializer =>
      _$agencyDetailsRecordSerializer;

  String? get country;

  String? get companyName;

  String? get companyAddress;

  String? get contactPersonName;

  String? get contactPersonEmail;

  String? get contactPersonPhone;

  String? get legalRegisteredName;

  String? get email;

  String? get phone;

  String? get fax;

  String? get lineId;

  String? get authorizedSignatory;

  String? get authorizedSignatoryEmail;

  String? get financeManager;

  String? get financeManagerEmail;

  String? get billingDepartmant;

  String? get billingDepartmentEmail;

  String? get departmentHead;

  String? get departmentHeadEmail;

  String? get licenseNumber;

  String? get iataCode;

  String? get bankName;

  String? get bankAccountNumber;

  DateTime? get registrationDate;

  String? get id;

  bool? get isApproved;

  ApprovalDetailsStruct get approvalDetails;

  AccountManagerStruct get accountManager;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AgencyDetailsRecordBuilder builder) => builder
    ..country = ''
    ..companyName = ''
    ..companyAddress = ''
    ..contactPersonName = ''
    ..contactPersonEmail = ''
    ..contactPersonPhone = ''
    ..legalRegisteredName = ''
    ..email = ''
    ..phone = ''
    ..fax = ''
    ..lineId = ''
    ..authorizedSignatory = ''
    ..authorizedSignatoryEmail = ''
    ..financeManager = ''
    ..financeManagerEmail = ''
    ..billingDepartmant = ''
    ..billingDepartmentEmail = ''
    ..departmentHead = ''
    ..departmentHeadEmail = ''
    ..licenseNumber = ''
    ..iataCode = ''
    ..bankName = ''
    ..bankAccountNumber = ''
    ..id = ''
    ..isApproved = false
    ..approvalDetails = ApprovalDetailsStructBuilder()
    ..accountManager = AccountManagerStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agency_details');

  static Stream<AgencyDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AgencyDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AgencyDetailsRecord._();
  factory AgencyDetailsRecord(
          [void Function(AgencyDetailsRecordBuilder) updates]) =
      _$AgencyDetailsRecord;

  static AgencyDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAgencyDetailsRecordData({
  String? country,
  String? companyName,
  String? companyAddress,
  String? contactPersonName,
  String? contactPersonEmail,
  String? contactPersonPhone,
  String? legalRegisteredName,
  String? email,
  String? phone,
  String? fax,
  String? lineId,
  String? authorizedSignatory,
  String? authorizedSignatoryEmail,
  String? financeManager,
  String? financeManagerEmail,
  String? billingDepartmant,
  String? billingDepartmentEmail,
  String? departmentHead,
  String? departmentHeadEmail,
  String? licenseNumber,
  String? iataCode,
  String? bankName,
  String? bankAccountNumber,
  DateTime? registrationDate,
  String? id,
  bool? isApproved,
  ApprovalDetailsStruct? approvalDetails,
  AccountManagerStruct? accountManager,
}) {
  final firestoreData = serializers.toFirestore(
    AgencyDetailsRecord.serializer,
    AgencyDetailsRecord(
      (a) => a
        ..country = country
        ..companyName = companyName
        ..companyAddress = companyAddress
        ..contactPersonName = contactPersonName
        ..contactPersonEmail = contactPersonEmail
        ..contactPersonPhone = contactPersonPhone
        ..legalRegisteredName = legalRegisteredName
        ..email = email
        ..phone = phone
        ..fax = fax
        ..lineId = lineId
        ..authorizedSignatory = authorizedSignatory
        ..authorizedSignatoryEmail = authorizedSignatoryEmail
        ..financeManager = financeManager
        ..financeManagerEmail = financeManagerEmail
        ..billingDepartmant = billingDepartmant
        ..billingDepartmentEmail = billingDepartmentEmail
        ..departmentHead = departmentHead
        ..departmentHeadEmail = departmentHeadEmail
        ..licenseNumber = licenseNumber
        ..iataCode = iataCode
        ..bankName = bankName
        ..bankAccountNumber = bankAccountNumber
        ..registrationDate = registrationDate
        ..id = id
        ..isApproved = isApproved
        ..approvalDetails = ApprovalDetailsStructBuilder()
        ..accountManager = AccountManagerStructBuilder(),
    ),
  );

  // Handle nested data for "approvalDetails" field.
  addApprovalDetailsStructData(
      firestoreData, approvalDetails, 'approvalDetails');

  // Handle nested data for "accountManager" field.
  addAccountManagerStructData(firestoreData, accountManager, 'accountManager');

  return firestoreData;
}
