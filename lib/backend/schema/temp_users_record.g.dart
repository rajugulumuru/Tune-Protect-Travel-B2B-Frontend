// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TempUsersRecord> _$tempUsersRecordSerializer =
    new _$TempUsersRecordSerializer();

class _$TempUsersRecordSerializer
    implements StructuredSerializer<TempUsersRecord> {
  @override
  final Iterable<Type> types = const [TempUsersRecord, _$TempUsersRecord];
  @override
  final String wireName = 'TempUsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TempUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempPassword;
    if (value != null) {
      result
        ..add('tempPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.agencyRef;
    if (value != null) {
      result
        ..add('agencyRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.landlineNo;
    if (value != null) {
      result
        ..add('landlineNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNo;
    if (value != null) {
      result
        ..add('mobileNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.branch;
    if (value != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
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
  TempUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TempUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tempPassword':
          result.tempPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'agencyRef':
          result.agencyRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'landlineNo':
          result.landlineNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mobileNo':
          result.mobileNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$TempUsersRecord extends TempUsersRecord {
  @override
  final String? email;
  @override
  final String? tempPassword;
  @override
  final DocumentReference<Object?>? agencyRef;
  @override
  final bool? isActive;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? landlineNo;
  @override
  final String? mobileNo;
  @override
  final String? branch;
  @override
  final bool? isAdmin;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TempUsersRecord([void Function(TempUsersRecordBuilder)? updates]) =>
      (new TempUsersRecordBuilder()..update(updates))._build();

  _$TempUsersRecord._(
      {this.email,
      this.tempPassword,
      this.agencyRef,
      this.isActive,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.landlineNo,
      this.mobileNo,
      this.branch,
      this.isAdmin,
      this.ffRef})
      : super._();

  @override
  TempUsersRecord rebuild(void Function(TempUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TempUsersRecordBuilder toBuilder() =>
      new TempUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TempUsersRecord &&
        email == other.email &&
        tempPassword == other.tempPassword &&
        agencyRef == other.agencyRef &&
        isActive == other.isActive &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        dateOfBirth == other.dateOfBirth &&
        landlineNo == other.landlineNo &&
        mobileNo == other.mobileNo &&
        branch == other.branch &&
        isAdmin == other.isAdmin &&
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
                                            $jc($jc(0, email.hashCode),
                                                tempPassword.hashCode),
                                            agencyRef.hashCode),
                                        isActive.hashCode),
                                    firstName.hashCode),
                                lastName.hashCode),
                            dateOfBirth.hashCode),
                        landlineNo.hashCode),
                    mobileNo.hashCode),
                branch.hashCode),
            isAdmin.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TempUsersRecord')
          ..add('email', email)
          ..add('tempPassword', tempPassword)
          ..add('agencyRef', agencyRef)
          ..add('isActive', isActive)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('landlineNo', landlineNo)
          ..add('mobileNo', mobileNo)
          ..add('branch', branch)
          ..add('isAdmin', isAdmin)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TempUsersRecordBuilder
    implements Builder<TempUsersRecord, TempUsersRecordBuilder> {
  _$TempUsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _tempPassword;
  String? get tempPassword => _$this._tempPassword;
  set tempPassword(String? tempPassword) => _$this._tempPassword = tempPassword;

  DocumentReference<Object?>? _agencyRef;
  DocumentReference<Object?>? get agencyRef => _$this._agencyRef;
  set agencyRef(DocumentReference<Object?>? agencyRef) =>
      _$this._agencyRef = agencyRef;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _landlineNo;
  String? get landlineNo => _$this._landlineNo;
  set landlineNo(String? landlineNo) => _$this._landlineNo = landlineNo;

  String? _mobileNo;
  String? get mobileNo => _$this._mobileNo;
  set mobileNo(String? mobileNo) => _$this._mobileNo = mobileNo;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TempUsersRecordBuilder() {
    TempUsersRecord._initializeBuilder(this);
  }

  TempUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _tempPassword = $v.tempPassword;
      _agencyRef = $v.agencyRef;
      _isActive = $v.isActive;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _dateOfBirth = $v.dateOfBirth;
      _landlineNo = $v.landlineNo;
      _mobileNo = $v.mobileNo;
      _branch = $v.branch;
      _isAdmin = $v.isAdmin;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TempUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TempUsersRecord;
  }

  @override
  void update(void Function(TempUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TempUsersRecord build() => _build();

  _$TempUsersRecord _build() {
    final _$result = _$v ??
        new _$TempUsersRecord._(
            email: email,
            tempPassword: tempPassword,
            agencyRef: agencyRef,
            isActive: isActive,
            firstName: firstName,
            lastName: lastName,
            dateOfBirth: dateOfBirth,
            landlineNo: landlineNo,
            mobileNo: mobileNo,
            branch: branch,
            isAdmin: isAdmin,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
