import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'credit_term_struct.g.dart';

abstract class CreditTermStruct
    implements Built<CreditTermStruct, CreditTermStructBuilder> {
  static Serializer<CreditTermStruct> get serializer =>
      _$creditTermStructSerializer;

  double? get commission;

  double? get overrideCommision;

  String? get underwriter;

  double? get credit;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(CreditTermStructBuilder builder) => builder
    ..commission = 0.0
    ..overrideCommision = 0.0
    ..underwriter = ''
    ..credit = 0.0
    ..firestoreUtilData = FirestoreUtilData();

  CreditTermStruct._();
  factory CreditTermStruct([void Function(CreditTermStructBuilder) updates]) =
      _$CreditTermStruct;
}

CreditTermStruct createCreditTermStruct({
  double? commission,
  double? overrideCommision,
  String? underwriter,
  double? credit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreditTermStruct(
      (c) => c
        ..commission = commission
        ..overrideCommision = overrideCommision
        ..underwriter = underwriter
        ..credit = credit
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

CreditTermStruct? updateCreditTermStruct(
  CreditTermStruct? creditTerm, {
  bool clearUnsetFields = true,
}) =>
    creditTerm != null
        ? (creditTerm.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addCreditTermStructData(
  Map<String, dynamic> firestoreData,
  CreditTermStruct? creditTerm,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creditTerm == null) {
    return;
  }
  if (creditTerm.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && creditTerm.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creditTermData = getCreditTermFirestoreData(creditTerm, forFieldValue);
  final nestedData = creditTermData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = creditTerm.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getCreditTermFirestoreData(
  CreditTermStruct? creditTerm, [
  bool forFieldValue = false,
]) {
  if (creditTerm == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(CreditTermStruct.serializer, creditTerm);

  // Add any Firestore field values
  creditTerm.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreditTermListFirestoreData(
  List<CreditTermStruct>? creditTerms,
) =>
    creditTerms?.map((c) => getCreditTermFirestoreData(c, true)).toList() ?? [];
