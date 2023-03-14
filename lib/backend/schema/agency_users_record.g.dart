// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AgencyUsersRecord> _$agencyUsersRecordSerializer =
    new _$AgencyUsersRecordSerializer();

class _$AgencyUsersRecordSerializer
    implements StructuredSerializer<AgencyUsersRecord> {
  @override
  final Iterable<Type> types = const [AgencyUsersRecord, _$AgencyUsersRecord];
  @override
  final String wireName = 'AgencyUsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AgencyUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('UserName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('FirstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('LastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('DateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.branch;
    if (value != null) {
      result
        ..add('Branch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('IsAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.agencyRef;
    if (value != null) {
      result
        ..add('AgencyRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isNewUser;
    if (value != null) {
      result
        ..add('IsNewUser')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.landlineNo;
    if (value != null) {
      result
        ..add('LandlineNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobileNo;
    if (value != null) {
      result
        ..add('MobileNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.agencyCode;
    if (value != null) {
      result
        ..add('AgencyCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempPass;
    if (value != null) {
      result
        ..add('TempPass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  AgencyUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AgencyUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'UserName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FirstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IsAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'AgencyRef':
          result.agencyRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IsNewUser':
          result.isNewUser = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'LandlineNo':
          result.landlineNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'MobileNo':
          result.mobileNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'AgencyCode':
          result.agencyCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TempPass':
          result.tempPass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$AgencyUsersRecord extends AgencyUsersRecord {
  @override
  final String? userName;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? branch;
  @override
  final bool? isAdmin;
  @override
  final DocumentReference<Object?>? agencyRef;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? phoneNumber;
  @override
  final String? password;
  @override
  final bool? isNewUser;
  @override
  final String? landlineNo;
  @override
  final String? mobileNo;
  @override
  final String? agencyCode;
  @override
  final String? tempPass;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AgencyUsersRecord(
          [void Function(AgencyUsersRecordBuilder)? updates]) =>
      (new AgencyUsersRecordBuilder()..update(updates))._build();

  _$AgencyUsersRecord._(
      {this.userName,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.branch,
      this.isAdmin,
      this.agencyRef,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.email,
      this.displayName,
      this.phoneNumber,
      this.password,
      this.isNewUser,
      this.landlineNo,
      this.mobileNo,
      this.agencyCode,
      this.tempPass,
      this.ffRef})
      : super._();

  @override
  AgencyUsersRecord rebuild(void Function(AgencyUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgencyUsersRecordBuilder toBuilder() =>
      new AgencyUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgencyUsersRecord &&
        userName == other.userName &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        dateOfBirth == other.dateOfBirth &&
        branch == other.branch &&
        isAdmin == other.isAdmin &&
        agencyRef == other.agencyRef &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        email == other.email &&
        displayName == other.displayName &&
        phoneNumber == other.phoneNumber &&
        password == other.password &&
        isNewUser == other.isNewUser &&
        landlineNo == other.landlineNo &&
        mobileNo == other.mobileNo &&
        agencyCode == other.agencyCode &&
        tempPass == other.tempPass &&
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
                                                                            $jc($jc(0, userName.hashCode),
                                                                                firstName.hashCode),
                                                                            lastName.hashCode),
                                                                        dateOfBirth.hashCode),
                                                                    branch.hashCode),
                                                                isAdmin.hashCode),
                                                            agencyRef.hashCode),
                                                        photoUrl.hashCode),
                                                    uid.hashCode),
                                                createdTime.hashCode),
                                            email.hashCode),
                                        displayName.hashCode),
                                    phoneNumber.hashCode),
                                password.hashCode),
                            isNewUser.hashCode),
                        landlineNo.hashCode),
                    mobileNo.hashCode),
                agencyCode.hashCode),
            tempPass.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgencyUsersRecord')
          ..add('userName', userName)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('branch', branch)
          ..add('isAdmin', isAdmin)
          ..add('agencyRef', agencyRef)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('phoneNumber', phoneNumber)
          ..add('password', password)
          ..add('isNewUser', isNewUser)
          ..add('landlineNo', landlineNo)
          ..add('mobileNo', mobileNo)
          ..add('agencyCode', agencyCode)
          ..add('tempPass', tempPass)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AgencyUsersRecordBuilder
    implements Builder<AgencyUsersRecord, AgencyUsersRecordBuilder> {
  _$AgencyUsersRecord? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  DocumentReference<Object?>? _agencyRef;
  DocumentReference<Object?>? get agencyRef => _$this._agencyRef;
  set agencyRef(DocumentReference<Object?>? agencyRef) =>
      _$this._agencyRef = agencyRef;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _isNewUser;
  bool? get isNewUser => _$this._isNewUser;
  set isNewUser(bool? isNewUser) => _$this._isNewUser = isNewUser;

  String? _landlineNo;
  String? get landlineNo => _$this._landlineNo;
  set landlineNo(String? landlineNo) => _$this._landlineNo = landlineNo;

  String? _mobileNo;
  String? get mobileNo => _$this._mobileNo;
  set mobileNo(String? mobileNo) => _$this._mobileNo = mobileNo;

  String? _agencyCode;
  String? get agencyCode => _$this._agencyCode;
  set agencyCode(String? agencyCode) => _$this._agencyCode = agencyCode;

  String? _tempPass;
  String? get tempPass => _$this._tempPass;
  set tempPass(String? tempPass) => _$this._tempPass = tempPass;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AgencyUsersRecordBuilder() {
    AgencyUsersRecord._initializeBuilder(this);
  }

  AgencyUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _dateOfBirth = $v.dateOfBirth;
      _branch = $v.branch;
      _isAdmin = $v.isAdmin;
      _agencyRef = $v.agencyRef;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _email = $v.email;
      _displayName = $v.displayName;
      _phoneNumber = $v.phoneNumber;
      _password = $v.password;
      _isNewUser = $v.isNewUser;
      _landlineNo = $v.landlineNo;
      _mobileNo = $v.mobileNo;
      _agencyCode = $v.agencyCode;
      _tempPass = $v.tempPass;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgencyUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AgencyUsersRecord;
  }

  @override
  void update(void Function(AgencyUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgencyUsersRecord build() => _build();

  _$AgencyUsersRecord _build() {
    final _$result = _$v ??
        new _$AgencyUsersRecord._(
            userName: userName,
            firstName: firstName,
            lastName: lastName,
            dateOfBirth: dateOfBirth,
            branch: branch,
            isAdmin: isAdmin,
            agencyRef: agencyRef,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            email: email,
            displayName: displayName,
            phoneNumber: phoneNumber,
            password: password,
            isNewUser: isNewUser,
            landlineNo: landlineNo,
            mobileNo: mobileNo,
            agencyCode: agencyCode,
            tempPass: tempPass,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
