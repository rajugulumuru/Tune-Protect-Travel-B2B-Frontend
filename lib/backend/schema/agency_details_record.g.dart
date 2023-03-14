// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AgencyDetailsRecord> _$agencyDetailsRecordSerializer =
    new _$AgencyDetailsRecordSerializer();

class _$AgencyDetailsRecordSerializer
    implements StructuredSerializer<AgencyDetailsRecord> {
  @override
  final Iterable<Type> types = const [
    AgencyDetailsRecord,
    _$AgencyDetailsRecord
  ];
  @override
  final String wireName = 'AgencyDetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AgencyDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'approvalDetails',
      serializers.serialize(object.approvalDetails,
          specifiedType: const FullType(ApprovalDetailsStruct)),
      'accountManager',
      serializers.serialize(object.accountManager,
          specifiedType: const FullType(AccountManagerStruct)),
    ];
    Object? value;
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('companyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyAddress;
    if (value != null) {
      result
        ..add('companyAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactPersonName;
    if (value != null) {
      result
        ..add('contactPersonName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactPersonEmail;
    if (value != null) {
      result
        ..add('contactPersonEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contactPersonPhone;
    if (value != null) {
      result
        ..add('contactPersonPhone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.legalRegisteredName;
    if (value != null) {
      result
        ..add('legalRegisteredName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fax;
    if (value != null) {
      result
        ..add('fax')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lineId;
    if (value != null) {
      result
        ..add('lineId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authorizedSignatory;
    if (value != null) {
      result
        ..add('authorizedSignatory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.authorizedSignatoryEmail;
    if (value != null) {
      result
        ..add('authorizedSignatoryEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.financeManager;
    if (value != null) {
      result
        ..add('financeManager')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.financeManagerEmail;
    if (value != null) {
      result
        ..add('financeManagerEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.billingDepartmant;
    if (value != null) {
      result
        ..add('billingDepartmant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.billingDepartmentEmail;
    if (value != null) {
      result
        ..add('billingDepartmentEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.departmentHead;
    if (value != null) {
      result
        ..add('departmentHead')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.departmentHeadEmail;
    if (value != null) {
      result
        ..add('departmentHeadEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.licenseNumber;
    if (value != null) {
      result
        ..add('licenseNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iataCode;
    if (value != null) {
      result
        ..add('iataCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankName;
    if (value != null) {
      result
        ..add('bankName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankAccountNumber;
    if (value != null) {
      result
        ..add('bankAccountNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.registrationDate;
    if (value != null) {
      result
        ..add('registrationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isApproved;
    if (value != null) {
      result
        ..add('isApproved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AgencyDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgencyDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyAddress':
          result.companyAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactPersonName':
          result.contactPersonName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactPersonEmail':
          result.contactPersonEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contactPersonPhone':
          result.contactPersonPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'legalRegisteredName':
          result.legalRegisteredName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fax':
          result.fax = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lineId':
          result.lineId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'authorizedSignatory':
          result.authorizedSignatory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'authorizedSignatoryEmail':
          result.authorizedSignatoryEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'financeManager':
          result.financeManager = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'financeManagerEmail':
          result.financeManagerEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'billingDepartmant':
          result.billingDepartmant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'billingDepartmentEmail':
          result.billingDepartmentEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'departmentHead':
          result.departmentHead = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'departmentHeadEmail':
          result.departmentHeadEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'licenseNumber':
          result.licenseNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iataCode':
          result.iataCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bankName':
          result.bankName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bankAccountNumber':
          result.bankAccountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'registrationDate':
          result.registrationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isApproved':
          result.isApproved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'approvalDetails':
          result.approvalDetails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ApprovalDetailsStruct))!
              as ApprovalDetailsStruct);
          break;
        case 'accountManager':
          result.accountManager.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AccountManagerStruct))!
              as AccountManagerStruct);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AgencyDetailsRecord extends AgencyDetailsRecord {
  @override
  final String? country;
  @override
  final String? companyName;
  @override
  final String? companyAddress;
  @override
  final String? contactPersonName;
  @override
  final String? contactPersonEmail;
  @override
  final String? contactPersonPhone;
  @override
  final String? legalRegisteredName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? fax;
  @override
  final String? lineId;
  @override
  final String? authorizedSignatory;
  @override
  final String? authorizedSignatoryEmail;
  @override
  final String? financeManager;
  @override
  final String? financeManagerEmail;
  @override
  final String? billingDepartmant;
  @override
  final String? billingDepartmentEmail;
  @override
  final String? departmentHead;
  @override
  final String? departmentHeadEmail;
  @override
  final String? licenseNumber;
  @override
  final String? iataCode;
  @override
  final String? bankName;
  @override
  final String? bankAccountNumber;
  @override
  final DateTime? registrationDate;
  @override
  final String? id;
  @override
  final bool? isApproved;
  @override
  final ApprovalDetailsStruct approvalDetails;
  @override
  final AccountManagerStruct accountManager;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AgencyDetailsRecord(
          [void Function(AgencyDetailsRecordBuilder)? updates]) =>
      (new AgencyDetailsRecordBuilder()..update(updates))._build();

  _$AgencyDetailsRecord._(
      {this.country,
      this.companyName,
      this.companyAddress,
      this.contactPersonName,
      this.contactPersonEmail,
      this.contactPersonPhone,
      this.legalRegisteredName,
      this.email,
      this.phone,
      this.fax,
      this.lineId,
      this.authorizedSignatory,
      this.authorizedSignatoryEmail,
      this.financeManager,
      this.financeManagerEmail,
      this.billingDepartmant,
      this.billingDepartmentEmail,
      this.departmentHead,
      this.departmentHeadEmail,
      this.licenseNumber,
      this.iataCode,
      this.bankName,
      this.bankAccountNumber,
      this.registrationDate,
      this.id,
      this.isApproved,
      required this.approvalDetails,
      required this.accountManager,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        approvalDetails, r'AgencyDetailsRecord', 'approvalDetails');
    BuiltValueNullFieldError.checkNotNull(
        accountManager, r'AgencyDetailsRecord', 'accountManager');
  }

  @override
  AgencyDetailsRecord rebuild(
          void Function(AgencyDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgencyDetailsRecordBuilder toBuilder() =>
      new AgencyDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgencyDetailsRecord &&
        country == other.country &&
        companyName == other.companyName &&
        companyAddress == other.companyAddress &&
        contactPersonName == other.contactPersonName &&
        contactPersonEmail == other.contactPersonEmail &&
        contactPersonPhone == other.contactPersonPhone &&
        legalRegisteredName == other.legalRegisteredName &&
        email == other.email &&
        phone == other.phone &&
        fax == other.fax &&
        lineId == other.lineId &&
        authorizedSignatory == other.authorizedSignatory &&
        authorizedSignatoryEmail == other.authorizedSignatoryEmail &&
        financeManager == other.financeManager &&
        financeManagerEmail == other.financeManagerEmail &&
        billingDepartmant == other.billingDepartmant &&
        billingDepartmentEmail == other.billingDepartmentEmail &&
        departmentHead == other.departmentHead &&
        departmentHeadEmail == other.departmentHeadEmail &&
        licenseNumber == other.licenseNumber &&
        iataCode == other.iataCode &&
        bankName == other.bankName &&
        bankAccountNumber == other.bankAccountNumber &&
        registrationDate == other.registrationDate &&
        id == other.id &&
        isApproved == other.isApproved &&
        approvalDetails == other.approvalDetails &&
        accountManager == other.accountManager &&
        ffRef == other.ffRef;
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
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, country.hashCode), companyName.hashCode), companyAddress.hashCode), contactPersonName.hashCode), contactPersonEmail.hashCode), contactPersonPhone.hashCode), legalRegisteredName.hashCode), email.hashCode), phone.hashCode), fax.hashCode),
                                                                                lineId.hashCode),
                                                                            authorizedSignatory.hashCode),
                                                                        authorizedSignatoryEmail.hashCode),
                                                                    financeManager.hashCode),
                                                                financeManagerEmail.hashCode),
                                                            billingDepartmant.hashCode),
                                                        billingDepartmentEmail.hashCode),
                                                    departmentHead.hashCode),
                                                departmentHeadEmail.hashCode),
                                            licenseNumber.hashCode),
                                        iataCode.hashCode),
                                    bankName.hashCode),
                                bankAccountNumber.hashCode),
                            registrationDate.hashCode),
                        id.hashCode),
                    isApproved.hashCode),
                approvalDetails.hashCode),
            accountManager.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgencyDetailsRecord')
          ..add('country', country)
          ..add('companyName', companyName)
          ..add('companyAddress', companyAddress)
          ..add('contactPersonName', contactPersonName)
          ..add('contactPersonEmail', contactPersonEmail)
          ..add('contactPersonPhone', contactPersonPhone)
          ..add('legalRegisteredName', legalRegisteredName)
          ..add('email', email)
          ..add('phone', phone)
          ..add('fax', fax)
          ..add('lineId', lineId)
          ..add('authorizedSignatory', authorizedSignatory)
          ..add('authorizedSignatoryEmail', authorizedSignatoryEmail)
          ..add('financeManager', financeManager)
          ..add('financeManagerEmail', financeManagerEmail)
          ..add('billingDepartmant', billingDepartmant)
          ..add('billingDepartmentEmail', billingDepartmentEmail)
          ..add('departmentHead', departmentHead)
          ..add('departmentHeadEmail', departmentHeadEmail)
          ..add('licenseNumber', licenseNumber)
          ..add('iataCode', iataCode)
          ..add('bankName', bankName)
          ..add('bankAccountNumber', bankAccountNumber)
          ..add('registrationDate', registrationDate)
          ..add('id', id)
          ..add('isApproved', isApproved)
          ..add('approvalDetails', approvalDetails)
          ..add('accountManager', accountManager)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AgencyDetailsRecordBuilder
    implements Builder<AgencyDetailsRecord, AgencyDetailsRecordBuilder> {
  _$AgencyDetailsRecord? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  String? _companyAddress;
  String? get companyAddress => _$this._companyAddress;
  set companyAddress(String? companyAddress) =>
      _$this._companyAddress = companyAddress;

  String? _contactPersonName;
  String? get contactPersonName => _$this._contactPersonName;
  set contactPersonName(String? contactPersonName) =>
      _$this._contactPersonName = contactPersonName;

  String? _contactPersonEmail;
  String? get contactPersonEmail => _$this._contactPersonEmail;
  set contactPersonEmail(String? contactPersonEmail) =>
      _$this._contactPersonEmail = contactPersonEmail;

  String? _contactPersonPhone;
  String? get contactPersonPhone => _$this._contactPersonPhone;
  set contactPersonPhone(String? contactPersonPhone) =>
      _$this._contactPersonPhone = contactPersonPhone;

  String? _legalRegisteredName;
  String? get legalRegisteredName => _$this._legalRegisteredName;
  set legalRegisteredName(String? legalRegisteredName) =>
      _$this._legalRegisteredName = legalRegisteredName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _fax;
  String? get fax => _$this._fax;
  set fax(String? fax) => _$this._fax = fax;

  String? _lineId;
  String? get lineId => _$this._lineId;
  set lineId(String? lineId) => _$this._lineId = lineId;

  String? _authorizedSignatory;
  String? get authorizedSignatory => _$this._authorizedSignatory;
  set authorizedSignatory(String? authorizedSignatory) =>
      _$this._authorizedSignatory = authorizedSignatory;

  String? _authorizedSignatoryEmail;
  String? get authorizedSignatoryEmail => _$this._authorizedSignatoryEmail;
  set authorizedSignatoryEmail(String? authorizedSignatoryEmail) =>
      _$this._authorizedSignatoryEmail = authorizedSignatoryEmail;

  String? _financeManager;
  String? get financeManager => _$this._financeManager;
  set financeManager(String? financeManager) =>
      _$this._financeManager = financeManager;

  String? _financeManagerEmail;
  String? get financeManagerEmail => _$this._financeManagerEmail;
  set financeManagerEmail(String? financeManagerEmail) =>
      _$this._financeManagerEmail = financeManagerEmail;

  String? _billingDepartmant;
  String? get billingDepartmant => _$this._billingDepartmant;
  set billingDepartmant(String? billingDepartmant) =>
      _$this._billingDepartmant = billingDepartmant;

  String? _billingDepartmentEmail;
  String? get billingDepartmentEmail => _$this._billingDepartmentEmail;
  set billingDepartmentEmail(String? billingDepartmentEmail) =>
      _$this._billingDepartmentEmail = billingDepartmentEmail;

  String? _departmentHead;
  String? get departmentHead => _$this._departmentHead;
  set departmentHead(String? departmentHead) =>
      _$this._departmentHead = departmentHead;

  String? _departmentHeadEmail;
  String? get departmentHeadEmail => _$this._departmentHeadEmail;
  set departmentHeadEmail(String? departmentHeadEmail) =>
      _$this._departmentHeadEmail = departmentHeadEmail;

  String? _licenseNumber;
  String? get licenseNumber => _$this._licenseNumber;
  set licenseNumber(String? licenseNumber) =>
      _$this._licenseNumber = licenseNumber;

  String? _iataCode;
  String? get iataCode => _$this._iataCode;
  set iataCode(String? iataCode) => _$this._iataCode = iataCode;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _bankAccountNumber;
  String? get bankAccountNumber => _$this._bankAccountNumber;
  set bankAccountNumber(String? bankAccountNumber) =>
      _$this._bankAccountNumber = bankAccountNumber;

  DateTime? _registrationDate;
  DateTime? get registrationDate => _$this._registrationDate;
  set registrationDate(DateTime? registrationDate) =>
      _$this._registrationDate = registrationDate;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  ApprovalDetailsStructBuilder? _approvalDetails;
  ApprovalDetailsStructBuilder get approvalDetails =>
      _$this._approvalDetails ??= new ApprovalDetailsStructBuilder();
  set approvalDetails(ApprovalDetailsStructBuilder? approvalDetails) =>
      _$this._approvalDetails = approvalDetails;

  AccountManagerStructBuilder? _accountManager;
  AccountManagerStructBuilder get accountManager =>
      _$this._accountManager ??= new AccountManagerStructBuilder();
  set accountManager(AccountManagerStructBuilder? accountManager) =>
      _$this._accountManager = accountManager;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AgencyDetailsRecordBuilder() {
    AgencyDetailsRecord._initializeBuilder(this);
  }

  AgencyDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _companyName = $v.companyName;
      _companyAddress = $v.companyAddress;
      _contactPersonName = $v.contactPersonName;
      _contactPersonEmail = $v.contactPersonEmail;
      _contactPersonPhone = $v.contactPersonPhone;
      _legalRegisteredName = $v.legalRegisteredName;
      _email = $v.email;
      _phone = $v.phone;
      _fax = $v.fax;
      _lineId = $v.lineId;
      _authorizedSignatory = $v.authorizedSignatory;
      _authorizedSignatoryEmail = $v.authorizedSignatoryEmail;
      _financeManager = $v.financeManager;
      _financeManagerEmail = $v.financeManagerEmail;
      _billingDepartmant = $v.billingDepartmant;
      _billingDepartmentEmail = $v.billingDepartmentEmail;
      _departmentHead = $v.departmentHead;
      _departmentHeadEmail = $v.departmentHeadEmail;
      _licenseNumber = $v.licenseNumber;
      _iataCode = $v.iataCode;
      _bankName = $v.bankName;
      _bankAccountNumber = $v.bankAccountNumber;
      _registrationDate = $v.registrationDate;
      _id = $v.id;
      _isApproved = $v.isApproved;
      _approvalDetails = $v.approvalDetails.toBuilder();
      _accountManager = $v.accountManager.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgencyDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AgencyDetailsRecord;
  }

  @override
  void update(void Function(AgencyDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgencyDetailsRecord build() => _build();

  _$AgencyDetailsRecord _build() {
    _$AgencyDetailsRecord _$result;
    try {
      _$result = _$v ??
          new _$AgencyDetailsRecord._(
              country: country,
              companyName: companyName,
              companyAddress: companyAddress,
              contactPersonName: contactPersonName,
              contactPersonEmail: contactPersonEmail,
              contactPersonPhone: contactPersonPhone,
              legalRegisteredName: legalRegisteredName,
              email: email,
              phone: phone,
              fax: fax,
              lineId: lineId,
              authorizedSignatory: authorizedSignatory,
              authorizedSignatoryEmail: authorizedSignatoryEmail,
              financeManager: financeManager,
              financeManagerEmail: financeManagerEmail,
              billingDepartmant: billingDepartmant,
              billingDepartmentEmail: billingDepartmentEmail,
              departmentHead: departmentHead,
              departmentHeadEmail: departmentHeadEmail,
              licenseNumber: licenseNumber,
              iataCode: iataCode,
              bankName: bankName,
              bankAccountNumber: bankAccountNumber,
              registrationDate: registrationDate,
              id: id,
              isApproved: isApproved,
              approvalDetails: approvalDetails.build(),
              accountManager: accountManager.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'approvalDetails';
        approvalDetails.build();
        _$failedField = 'accountManager';
        accountManager.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AgencyDetailsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
