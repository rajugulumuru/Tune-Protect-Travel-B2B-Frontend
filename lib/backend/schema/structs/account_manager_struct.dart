import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'account_manager_struct.g.dart';

abstract class AccountManagerStruct
    implements Built<AccountManagerStruct, AccountManagerStructBuilder> {
  static Serializer<AccountManagerStruct> get serializer =>
      _$accountManagerStructSerializer;

  String? get name;

  String? get emailId;

  String? get contantNumber;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AccountManagerStructBuilder builder) => builder
    ..name = ''
    ..emailId = ''
    ..contantNumber = ''
    ..firestoreUtilData = FirestoreUtilData();

  AccountManagerStruct._();
  factory AccountManagerStruct(
          [void Function(AccountManagerStructBuilder) updates]) =
      _$AccountManagerStruct;
}

AccountManagerStruct createAccountManagerStruct({
  String? name,
  String? emailId,
  String? contantNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AccountManagerStruct(
      (a) => a
        ..name = name
        ..emailId = emailId
        ..contantNumber = contantNumber
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AccountManagerStruct? updateAccountManagerStruct(
  AccountManagerStruct? accountManager, {
  bool clearUnsetFields = true,
}) =>
    accountManager != null
        ? (accountManager.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAccountManagerStructData(
  Map<String, dynamic> firestoreData,
  AccountManagerStruct? accountManager,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (accountManager == null) {
    return;
  }
  if (accountManager.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && accountManager.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final accountManagerData =
      getAccountManagerFirestoreData(accountManager, forFieldValue);
  final nestedData =
      accountManagerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = accountManager.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAccountManagerFirestoreData(
  AccountManagerStruct? accountManager, [
  bool forFieldValue = false,
]) {
  if (accountManager == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(AccountManagerStruct.serializer, accountManager);

  // Add any Firestore field values
  accountManager.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAccountManagerListFirestoreData(
  List<AccountManagerStruct>? accountManagers,
) =>
    accountManagers
        ?.map((a) => getAccountManagerFirestoreData(a, true))
        .toList() ??
    [];
