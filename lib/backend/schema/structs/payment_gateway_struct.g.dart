// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_gateway_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PaymentGatewayStruct> _$paymentGatewayStructSerializer =
    new _$PaymentGatewayStructSerializer();

class _$PaymentGatewayStructSerializer
    implements StructuredSerializer<PaymentGatewayStruct> {
  @override
  final Iterable<Type> types = const [
    PaymentGatewayStruct,
    _$PaymentGatewayStruct
  ];
  @override
  final String wireName = 'PaymentGatewayStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PaymentGatewayStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.commission;
    if (value != null) {
      result
        ..add('commission')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.overrideCommision;
    if (value != null) {
      result
        ..add('overrideCommision')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  PaymentGatewayStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentGatewayStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'commission':
          result.commission = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'overrideCommision':
          result.overrideCommision = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$PaymentGatewayStruct extends PaymentGatewayStruct {
  @override
  final double? commission;
  @override
  final double? overrideCommision;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$PaymentGatewayStruct(
          [void Function(PaymentGatewayStructBuilder)? updates]) =>
      (new PaymentGatewayStructBuilder()..update(updates))._build();

  _$PaymentGatewayStruct._(
      {this.commission,
      this.overrideCommision,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'PaymentGatewayStruct', 'firestoreUtilData');
  }

  @override
  PaymentGatewayStruct rebuild(
          void Function(PaymentGatewayStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentGatewayStructBuilder toBuilder() =>
      new PaymentGatewayStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentGatewayStruct &&
        commission == other.commission &&
        overrideCommision == other.overrideCommision &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, commission.hashCode), overrideCommision.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentGatewayStruct')
          ..add('commission', commission)
          ..add('overrideCommision', overrideCommision)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class PaymentGatewayStructBuilder
    implements Builder<PaymentGatewayStruct, PaymentGatewayStructBuilder> {
  _$PaymentGatewayStruct? _$v;

  double? _commission;
  double? get commission => _$this._commission;
  set commission(double? commission) => _$this._commission = commission;

  double? _overrideCommision;
  double? get overrideCommision => _$this._overrideCommision;
  set overrideCommision(double? overrideCommision) =>
      _$this._overrideCommision = overrideCommision;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  PaymentGatewayStructBuilder() {
    PaymentGatewayStruct._initializeBuilder(this);
  }

  PaymentGatewayStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commission = $v.commission;
      _overrideCommision = $v.overrideCommision;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentGatewayStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentGatewayStruct;
  }

  @override
  void update(void Function(PaymentGatewayStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentGatewayStruct build() => _build();

  _$PaymentGatewayStruct _build() {
    final _$result = _$v ??
        new _$PaymentGatewayStruct._(
            commission: commission,
            overrideCommision: overrideCommision,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'PaymentGatewayStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
