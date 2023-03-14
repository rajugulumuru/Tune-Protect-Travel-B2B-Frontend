// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_details_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApprovalDetailsStruct> _$approvalDetailsStructSerializer =
    new _$ApprovalDetailsStructSerializer();

class _$ApprovalDetailsStructSerializer
    implements StructuredSerializer<ApprovalDetailsStruct> {
  @override
  final Iterable<Type> types = const [
    ApprovalDetailsStruct,
    _$ApprovalDetailsStruct
  ];
  @override
  final String wireName = 'ApprovalDetailsStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApprovalDetailsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'creditTerm',
      serializers.serialize(object.creditTerm,
          specifiedType: const FullType(CreditTermStruct)),
      'paymentGateway',
      serializers.serialize(object.paymentGateway,
          specifiedType: const FullType(PaymentGatewayStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.contractStartDate;
    if (value != null) {
      result
        ..add('contractStartDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.contractEndDate;
    if (value != null) {
      result
        ..add('contractEndDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.paymentType;
    if (value != null) {
      result
        ..add('paymentType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.agenyCode;
    if (value != null) {
      result
        ..add('agenyCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pseudoApiCode;
    if (value != null) {
      result
        ..add('pseudoApiCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.debitNoteFrequency;
    if (value != null) {
      result
        ..add('debitNoteFrequency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.licenseType;
    if (value != null) {
      result
        ..add('licenseType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.subGroup;
    if (value != null) {
      result
        ..add('subGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDeclined;
    if (value != null) {
      result
        ..add('isDeclined')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.declineReason;
    if (value != null) {
      result
        ..add('declineReason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ApprovalDetailsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApprovalDetailsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'contractStartDate':
          result.contractStartDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'contractEndDate':
          result.contractEndDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'paymentType':
          result.paymentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creditTerm':
          result.creditTerm.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CreditTermStruct))!
              as CreditTermStruct);
          break;
        case 'paymentGateway':
          result.paymentGateway.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PaymentGatewayStruct))!
              as PaymentGatewayStruct);
          break;
        case 'agenyCode':
          result.agenyCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pseudoApiCode':
          result.pseudoApiCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'debitNoteFrequency':
          result.debitNoteFrequency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'licenseType':
          result.licenseType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'subGroup':
          result.subGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isDeclined':
          result.isDeclined = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'declineReason':
          result.declineReason = serializers.deserialize(value,
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

class _$ApprovalDetailsStruct extends ApprovalDetailsStruct {
  @override
  final DateTime? contractStartDate;
  @override
  final DateTime? contractEndDate;
  @override
  final String? paymentType;
  @override
  final CreditTermStruct creditTerm;
  @override
  final PaymentGatewayStruct paymentGateway;
  @override
  final String? agenyCode;
  @override
  final String? pseudoApiCode;
  @override
  final String? debitNoteFrequency;
  @override
  final String? licenseType;
  @override
  final String? subGroup;
  @override
  final bool? isDeclined;
  @override
  final String? declineReason;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ApprovalDetailsStruct(
          [void Function(ApprovalDetailsStructBuilder)? updates]) =>
      (new ApprovalDetailsStructBuilder()..update(updates))._build();

  _$ApprovalDetailsStruct._(
      {this.contractStartDate,
      this.contractEndDate,
      this.paymentType,
      required this.creditTerm,
      required this.paymentGateway,
      this.agenyCode,
      this.pseudoApiCode,
      this.debitNoteFrequency,
      this.licenseType,
      this.subGroup,
      this.isDeclined,
      this.declineReason,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        creditTerm, r'ApprovalDetailsStruct', 'creditTerm');
    BuiltValueNullFieldError.checkNotNull(
        paymentGateway, r'ApprovalDetailsStruct', 'paymentGateway');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ApprovalDetailsStruct', 'firestoreUtilData');
  }

  @override
  ApprovalDetailsStruct rebuild(
          void Function(ApprovalDetailsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApprovalDetailsStructBuilder toBuilder() =>
      new ApprovalDetailsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApprovalDetailsStruct &&
        contractStartDate == other.contractStartDate &&
        contractEndDate == other.contractEndDate &&
        paymentType == other.paymentType &&
        creditTerm == other.creditTerm &&
        paymentGateway == other.paymentGateway &&
        agenyCode == other.agenyCode &&
        pseudoApiCode == other.pseudoApiCode &&
        debitNoteFrequency == other.debitNoteFrequency &&
        licenseType == other.licenseType &&
        subGroup == other.subGroup &&
        isDeclined == other.isDeclined &&
        declineReason == other.declineReason &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        0,
                                                        contractStartDate
                                                            .hashCode),
                                                    contractEndDate.hashCode),
                                                paymentType.hashCode),
                                            creditTerm.hashCode),
                                        paymentGateway.hashCode),
                                    agenyCode.hashCode),
                                pseudoApiCode.hashCode),
                            debitNoteFrequency.hashCode),
                        licenseType.hashCode),
                    subGroup.hashCode),
                isDeclined.hashCode),
            declineReason.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApprovalDetailsStruct')
          ..add('contractStartDate', contractStartDate)
          ..add('contractEndDate', contractEndDate)
          ..add('paymentType', paymentType)
          ..add('creditTerm', creditTerm)
          ..add('paymentGateway', paymentGateway)
          ..add('agenyCode', agenyCode)
          ..add('pseudoApiCode', pseudoApiCode)
          ..add('debitNoteFrequency', debitNoteFrequency)
          ..add('licenseType', licenseType)
          ..add('subGroup', subGroup)
          ..add('isDeclined', isDeclined)
          ..add('declineReason', declineReason)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ApprovalDetailsStructBuilder
    implements Builder<ApprovalDetailsStruct, ApprovalDetailsStructBuilder> {
  _$ApprovalDetailsStruct? _$v;

  DateTime? _contractStartDate;
  DateTime? get contractStartDate => _$this._contractStartDate;
  set contractStartDate(DateTime? contractStartDate) =>
      _$this._contractStartDate = contractStartDate;

  DateTime? _contractEndDate;
  DateTime? get contractEndDate => _$this._contractEndDate;
  set contractEndDate(DateTime? contractEndDate) =>
      _$this._contractEndDate = contractEndDate;

  String? _paymentType;
  String? get paymentType => _$this._paymentType;
  set paymentType(String? paymentType) => _$this._paymentType = paymentType;

  CreditTermStructBuilder? _creditTerm;
  CreditTermStructBuilder get creditTerm =>
      _$this._creditTerm ??= new CreditTermStructBuilder();
  set creditTerm(CreditTermStructBuilder? creditTerm) =>
      _$this._creditTerm = creditTerm;

  PaymentGatewayStructBuilder? _paymentGateway;
  PaymentGatewayStructBuilder get paymentGateway =>
      _$this._paymentGateway ??= new PaymentGatewayStructBuilder();
  set paymentGateway(PaymentGatewayStructBuilder? paymentGateway) =>
      _$this._paymentGateway = paymentGateway;

  String? _agenyCode;
  String? get agenyCode => _$this._agenyCode;
  set agenyCode(String? agenyCode) => _$this._agenyCode = agenyCode;

  String? _pseudoApiCode;
  String? get pseudoApiCode => _$this._pseudoApiCode;
  set pseudoApiCode(String? pseudoApiCode) =>
      _$this._pseudoApiCode = pseudoApiCode;

  String? _debitNoteFrequency;
  String? get debitNoteFrequency => _$this._debitNoteFrequency;
  set debitNoteFrequency(String? debitNoteFrequency) =>
      _$this._debitNoteFrequency = debitNoteFrequency;

  String? _licenseType;
  String? get licenseType => _$this._licenseType;
  set licenseType(String? licenseType) => _$this._licenseType = licenseType;

  String? _subGroup;
  String? get subGroup => _$this._subGroup;
  set subGroup(String? subGroup) => _$this._subGroup = subGroup;

  bool? _isDeclined;
  bool? get isDeclined => _$this._isDeclined;
  set isDeclined(bool? isDeclined) => _$this._isDeclined = isDeclined;

  String? _declineReason;
  String? get declineReason => _$this._declineReason;
  set declineReason(String? declineReason) =>
      _$this._declineReason = declineReason;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ApprovalDetailsStructBuilder() {
    ApprovalDetailsStruct._initializeBuilder(this);
  }

  ApprovalDetailsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contractStartDate = $v.contractStartDate;
      _contractEndDate = $v.contractEndDate;
      _paymentType = $v.paymentType;
      _creditTerm = $v.creditTerm.toBuilder();
      _paymentGateway = $v.paymentGateway.toBuilder();
      _agenyCode = $v.agenyCode;
      _pseudoApiCode = $v.pseudoApiCode;
      _debitNoteFrequency = $v.debitNoteFrequency;
      _licenseType = $v.licenseType;
      _subGroup = $v.subGroup;
      _isDeclined = $v.isDeclined;
      _declineReason = $v.declineReason;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApprovalDetailsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApprovalDetailsStruct;
  }

  @override
  void update(void Function(ApprovalDetailsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApprovalDetailsStruct build() => _build();

  _$ApprovalDetailsStruct _build() {
    _$ApprovalDetailsStruct _$result;
    try {
      _$result = _$v ??
          new _$ApprovalDetailsStruct._(
              contractStartDate: contractStartDate,
              contractEndDate: contractEndDate,
              paymentType: paymentType,
              creditTerm: creditTerm.build(),
              paymentGateway: paymentGateway.build(),
              agenyCode: agenyCode,
              pseudoApiCode: pseudoApiCode,
              debitNoteFrequency: debitNoteFrequency,
              licenseType: licenseType,
              subGroup: subGroup,
              isDeclined: isDeclined,
              declineReason: declineReason,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'ApprovalDetailsStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creditTerm';
        creditTerm.build();
        _$failedField = 'paymentGateway';
        paymentGateway.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApprovalDetailsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
