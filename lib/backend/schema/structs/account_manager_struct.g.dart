// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_manager_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountManagerStruct> _$accountManagerStructSerializer =
    new _$AccountManagerStructSerializer();

class _$AccountManagerStructSerializer
    implements StructuredSerializer<AccountManagerStruct> {
  @override
  final Iterable<Type> types = const [
    AccountManagerStruct,
    _$AccountManagerStruct
  ];
  @override
  final String wireName = 'AccountManagerStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AccountManagerStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emailId;
    if (value != null) {
      result
        ..add('emailId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contantNumber;
    if (value != null) {
      result
        ..add('contantNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AccountManagerStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountManagerStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emailId':
          result.emailId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contantNumber':
          result.contantNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountManagerStruct extends AccountManagerStruct {
  @override
  final String? name;
  @override
  final String? emailId;
  @override
  final String? contantNumber;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AccountManagerStruct(
          [void Function(AccountManagerStructBuilder)? updates]) =>
      (new AccountManagerStructBuilder()..update(updates))._build();

  _$AccountManagerStruct._(
      {this.name,
      this.emailId,
      this.contantNumber,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AccountManagerStruct', 'firestoreUtilData');
  }

  @override
  AccountManagerStruct rebuild(
          void Function(AccountManagerStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountManagerStructBuilder toBuilder() =>
      new AccountManagerStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountManagerStruct &&
        name == other.name &&
        emailId == other.emailId &&
        contantNumber == other.contantNumber &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), emailId.hashCode),
            contantNumber.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountManagerStruct')
          ..add('name', name)
          ..add('emailId', emailId)
          ..add('contantNumber', contantNumber)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AccountManagerStructBuilder
    implements Builder<AccountManagerStruct, AccountManagerStructBuilder> {
  _$AccountManagerStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _emailId;
  String? get emailId => _$this._emailId;
  set emailId(String? emailId) => _$this._emailId = emailId;

  String? _contantNumber;
  String? get contantNumber => _$this._contantNumber;
  set contantNumber(String? contantNumber) =>
      _$this._contantNumber = contantNumber;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AccountManagerStructBuilder() {
    AccountManagerStruct._initializeBuilder(this);
  }

  AccountManagerStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _emailId = $v.emailId;
      _contantNumber = $v.contantNumber;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountManagerStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountManagerStruct;
  }

  @override
  void update(void Function(AccountManagerStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountManagerStruct build() => _build();

  _$AccountManagerStruct _build() {
    final _$result = _$v ??
        new _$AccountManagerStruct._(
            name: name,
            emailId: emailId,
            contantNumber: contantNumber,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'AccountManagerStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
