import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'payment_gateway_struct.g.dart';

abstract class PaymentGatewayStruct
    implements Built<PaymentGatewayStruct, PaymentGatewayStructBuilder> {
  static Serializer<PaymentGatewayStruct> get serializer =>
      _$paymentGatewayStructSerializer;

  double? get commission;

  double? get overrideCommision;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(PaymentGatewayStructBuilder builder) => builder
    ..commission = 0.0
    ..overrideCommision = 0.0
    ..firestoreUtilData = FirestoreUtilData();

  PaymentGatewayStruct._();
  factory PaymentGatewayStruct(
          [void Function(PaymentGatewayStructBuilder) updates]) =
      _$PaymentGatewayStruct;
}

PaymentGatewayStruct createPaymentGatewayStruct({
  double? commission,
  double? overrideCommision,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentGatewayStruct(
      (p) => p
        ..commission = commission
        ..overrideCommision = overrideCommision
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

PaymentGatewayStruct? updatePaymentGatewayStruct(
  PaymentGatewayStruct? paymentGateway, {
  bool clearUnsetFields = true,
}) =>
    paymentGateway != null
        ? (paymentGateway.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addPaymentGatewayStructData(
  Map<String, dynamic> firestoreData,
  PaymentGatewayStruct? paymentGateway,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentGateway == null) {
    return;
  }
  if (paymentGateway.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && paymentGateway.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentGatewayData =
      getPaymentGatewayFirestoreData(paymentGateway, forFieldValue);
  final nestedData =
      paymentGatewayData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = paymentGateway.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getPaymentGatewayFirestoreData(
  PaymentGatewayStruct? paymentGateway, [
  bool forFieldValue = false,
]) {
  if (paymentGateway == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(PaymentGatewayStruct.serializer, paymentGateway);

  // Add any Firestore field values
  paymentGateway.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentGatewayListFirestoreData(
  List<PaymentGatewayStruct>? paymentGateways,
) =>
    paymentGateways
        ?.map((p) => getPaymentGatewayFirestoreData(p, true))
        .toList() ??
    [];
