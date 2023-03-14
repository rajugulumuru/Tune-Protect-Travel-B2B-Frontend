import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _JourneyType = 1;
  int get JourneyType => _JourneyType;
  set JourneyType(int _value) {
    _JourneyType = _value;
  }

  int _DestinationType = 1;
  int get DestinationType => _DestinationType;
  set DestinationType(int _value) {
    _DestinationType = _value;
  }

  int _selectedPolicyCard = 1;
  int get selectedPolicyCard => _selectedPolicyCard;
  set selectedPolicyCard(int _value) {
    _selectedPolicyCard = _value;
  }

  int _IssuePolicyCurrentTab = 1;
  int get IssuePolicyCurrentTab => _IssuePolicyCurrentTab;
  set IssuePolicyCurrentTab(int _value) {
    _IssuePolicyCurrentTab = _value;
  }

  bool _IPPlanType1 = true;
  bool get IPPlanType1 => _IPPlanType1;
  set IPPlanType1(bool _value) {
    _IPPlanType1 = _value;
  }

  List<bool> _TravelerInfoCollapse = [true, false, false];
  List<bool> get TravelerInfoCollapse => _TravelerInfoCollapse;
  set TravelerInfoCollapse(List<bool> _value) {
    _TravelerInfoCollapse = _value;
  }

  void addToTravelerInfoCollapse(bool _value) {
    _TravelerInfoCollapse.add(_value);
  }

  void removeFromTravelerInfoCollapse(bool _value) {
    _TravelerInfoCollapse.remove(_value);
  }

  void removeAtIndexFromTravelerInfoCollapse(int _index) {
    _TravelerInfoCollapse.removeAt(_index);
  }

  dynamic _Test = jsonDecode('{\"1\":true,\"2\":false}');
  dynamic get Test => _Test;
  set Test(dynamic _value) {
    _Test = _value;
  }

  String _currentPage = 'Dashboard';
  String get currentPage => _currentPage;
  set currentPage(String _value) {
    _currentPage = _value;
  }

  bool _sideNavVisibilty = true;
  bool get sideNavVisibilty => _sideNavVisibilty;
  set sideNavVisibilty(bool _value) {
    _sideNavVisibilty = _value;
  }

  int _maxscr = 1;
  int get maxscr => _maxscr;
  set maxscr(int _value) {
    _maxscr = _value;
  }

  int _minscr = 1;
  int get minscr => _minscr;
  set minscr(int _value) {
    _minscr = _value;
  }

  dynamic _generalAppStateJSON = jsonDecode(
      '{\"QueueNavDrop\":false,\"QueueNavAllDrop\":false,\"UsersNavDrop\":false,\"DownloadsNavDrop\":false,\"EntitiesNavDrop\":false,\"PayableNavDrop\":false,\"ConfigNavDrop\":false,\"ConfigNavReportDrop\":false}');
  dynamic get generalAppStateJSON => _generalAppStateJSON;
  set generalAppStateJSON(dynamic _value) {
    _generalAppStateJSON = _value;
  }

  String _userRole = 'agent';
  String get userRole => _userRole;
  set userRole(String _value) {
    _userRole = _value;
  }

  bool _invoiceState = true;
  bool get invoiceState => _invoiceState;
  set invoiceState(bool _value) {
    _invoiceState = _value;
  }

  String _currentUser = '';
  String get currentUser => _currentUser;
  set currentUser(String _value) {
    _currentUser = _value;
  }

  List<String> _test112 = ['Hello World', 'Hello World', 'Hello World'];
  List<String> get test112 => _test112;
  set test112(List<String> _value) {
    _test112 = _value;
  }

  void addToTest112(String _value) {
    _test112.add(_value);
  }

  void removeFromTest112(String _value) {
    _test112.remove(_value);
  }

  void removeAtIndexFromTest112(int _index) {
    _test112.removeAt(_index);
  }

  dynamic _getPolicySummary;
  dynamic get getPolicySummary => _getPolicySummary;
  set getPolicySummary(dynamic _value) {
    _getPolicySummary = _value;
  }

  String _agencyName = '';
  String get agencyName => _agencyName;
  set agencyName(String _value) {
    _agencyName = _value;
  }

  List<int> _tempList = [56, 87, 67];
  List<int> get tempList => _tempList;
  set tempList(List<int> _value) {
    _tempList = _value;
  }

  void addToTempList(int _value) {
    _tempList.add(_value);
  }

  void removeFromTempList(int _value) {
    _tempList.remove(_value);
  }

  void removeAtIndexFromTempList(int _index) {
    _tempList.removeAt(_index);
  }

  dynamic _searchBooking;
  dynamic get searchBooking => _searchBooking;
  set searchBooking(dynamic _value) {
    _searchBooking = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
