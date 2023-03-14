// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_term_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreditTermStruct> _$creditTermStructSerializer =
    new _$CreditTermStructSerializer();

class _$CreditTermStructSerializer
    implements StructuredSerializer<CreditTermStruct> {
  @override
  final Iterable<Type> types = const [CreditTermStruct, _$CreditTermStruct];
  @override
  final String wireName = 'CreditTermStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, CreditTermStruct object,
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
    value = object.underwriter;
    if (value != null) {
      result
        ..add('underwriter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.credit;
    if (value != null) {
      result
        ..add('credit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  CreditTermStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreditTermStructBuilder();

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
        case 'underwriter':
          result.underwriter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'credit':
          result.credit = serializers.deserialize(value,
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

class _$CreditTermStruct extends CreditTermStruct {
  @override
  final double? commission;
  @override
  final double? overrideCommision;
  @override
  final String? underwriter;
  @override
  final double? credit;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$CreditTermStruct(
          [void Function(CreditTermStructBuilder)? updates]) =>
      (new CreditTermStructBuilder()..update(updates))._build();

  _$CreditTermStruct._(
      {this.commission,
      this.overrideCommision,
      this.underwriter,
      this.credit,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'CreditTermStruct', 'firestoreUtilData');
  }

  @override
  CreditTermStruct rebuild(void Function(CreditTermStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreditTermStructBuilder toBuilder() =>
      new CreditTermStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreditTermStruct &&
        commission == other.commission &&
        overrideCommision == other.overrideCommision &&
        underwriter == other.underwriter &&
        credit == other.credit &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, commission.hashCode), overrideCommision.hashCode),
                underwriter.hashCode),
            credit.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreditTermStruct')
          ..add('commission', commission)
          ..add('overrideCommision', overrideCommision)
          ..add('underwriter', underwriter)
          ..add('credit', credit)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class CreditTermStructBuilder
    implements Builder<CreditTermStruct, CreditTermStructBuilder> {
  _$CreditTermStruct? _$v;

  double? _commission;
  double? get commission => _$this._commission;
  set commission(double? commission) => _$this._commission = commission;

  double? _overrideCommision;
  double? get overrideCommision => _$this._overrideCommision;
  set overrideCommision(double? overrideCommision) =>
      _$this._overrideCommision = overrideCommision;

  String? _underwriter;
  String? get underwriter => _$this._underwriter;
  set underwriter(String? underwriter) => _$this._underwriter = underwriter;

  double? _credit;
  double? get credit => _$this._credit;
  set credit(double? credit) => _$this._credit = credit;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  CreditTermStructBuilder() {
    CreditTermStruct._initializeBuilder(this);
  }

  CreditTermStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commission = $v.commission;
      _overrideCommision = $v.overrideCommision;
      _underwriter = $v.underwriter;
      _credit = $v.credit;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreditTermStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreditTermStruct;
  }

  @override
  void update(void Function(CreditTermStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreditTermStruct build() => _build();

  _$CreditTermStruct _build() {
    final _$result = _$v ??
        new _$CreditTermStruct._(
            commission: commission,
            overrideCommision: overrideCommision,
            underwriter: underwriter,
            credit: credit,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'CreditTermStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
