import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'approval_details_struct.g.dart';

abstract class ApprovalDetailsStruct
    implements Built<ApprovalDetailsStruct, ApprovalDetailsStructBuilder> {
  static Serializer<ApprovalDetailsStruct> get serializer =>
      _$approvalDetailsStructSerializer;

  DateTime? get contractStartDate;

  DateTime? get contractEndDate;

  String? get paymentType;

  CreditTermStruct get creditTerm;

  PaymentGatewayStruct get paymentGateway;

  String? get agenyCode;

  String? get pseudoApiCode;

  String? get debitNoteFrequency;

  String? get licenseType;

  String? get subGroup;

  bool? get isDeclined;

  String? get declineReason;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ApprovalDetailsStructBuilder builder) =>
      builder
        ..paymentType = ''
        ..creditTerm = CreditTermStructBuilder()
        ..paymentGateway = PaymentGatewayStructBuilder()
        ..agenyCode = ''
        ..pseudoApiCode = ''
        ..debitNoteFrequency = ''
        ..licenseType = ''
        ..subGroup = ''
        ..isDeclined = false
        ..declineReason = ''
        ..firestoreUtilData = FirestoreUtilData();

  ApprovalDetailsStruct._();
  factory ApprovalDetailsStruct(
          [void Function(ApprovalDetailsStructBuilder) updates]) =
      _$ApprovalDetailsStruct;
}

ApprovalDetailsStruct createApprovalDetailsStruct({
  DateTime? contractStartDate,
  DateTime? contractEndDate,
  String? paymentType,
  CreditTermStruct? creditTerm,
  PaymentGatewayStruct? paymentGateway,
  String? agenyCode,
  String? pseudoApiCode,
  String? debitNoteFrequency,
  String? licenseType,
  String? subGroup,
  bool? isDeclined,
  String? declineReason,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApprovalDetailsStruct(
      (a) => a
        ..contractStartDate = contractStartDate
        ..contractEndDate = contractEndDate
        ..paymentType = paymentType
        ..creditTerm = creditTerm?.toBuilder() ?? CreditTermStructBuilder()
        ..paymentGateway =
            paymentGateway?.toBuilder() ?? PaymentGatewayStructBuilder()
        ..agenyCode = agenyCode
        ..pseudoApiCode = pseudoApiCode
        ..debitNoteFrequency = debitNoteFrequency
        ..licenseType = licenseType
        ..subGroup = subGroup
        ..isDeclined = isDeclined
        ..declineReason = declineReason
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ApprovalDetailsStruct? updateApprovalDetailsStruct(
  ApprovalDetailsStruct? approvalDetails, {
  bool clearUnsetFields = true,
}) =>
    approvalDetails != null
        ? (approvalDetails.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addApprovalDetailsStructData(
  Map<String, dynamic> firestoreData,
  ApprovalDetailsStruct? approvalDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (approvalDetails == null) {
    return;
  }
  if (approvalDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && approvalDetails.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final approvalDetailsData =
      getApprovalDetailsFirestoreData(approvalDetails, forFieldValue);
  final nestedData =
      approvalDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = approvalDetails.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getApprovalDetailsFirestoreData(
  ApprovalDetailsStruct? approvalDetails, [
  bool forFieldValue = false,
]) {
  if (approvalDetails == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      ApprovalDetailsStruct.serializer, approvalDetails);

  // Handle nested data for "creditTerm" field.
  addCreditTermStructData(
      firestoreData, approvalDetails.creditTerm, 'creditTerm', forFieldValue);

  // Handle nested data for "paymentGateway" field.
  addPaymentGatewayStructData(firestoreData, approvalDetails.paymentGateway,
      'paymentGateway', forFieldValue);

  // Add any Firestore field values
  approvalDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApprovalDetailsListFirestoreData(
  List<ApprovalDetailsStruct>? approvalDetailss,
) =>
    approvalDetailss
        ?.map((a) => getApprovalDetailsFirestoreData(a, true))
        .toList() ??
    [];
