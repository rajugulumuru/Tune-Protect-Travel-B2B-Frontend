import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

dynamic updateJsonElement(
  dynamic iJson,
  String iKey,
  bool? iValue,
) {
  // update Json Elements
  if (iJson is Map) {
    iJson[iKey] = iValue;
  } else if (iJson is List) {
    iJson.forEach((element) {
      updateJsonElement(element, iKey, iValue);
    });
  }
  return iJson;
}

String? base64encodeUserPass() {
// base64 encode of Username and Password for basic Auth
  final String username = 'b2b-uat';
  final String password = 'qwer1234';
  final String basicAuth = base64Encode(utf8.encode('$username:$password'));
  return basicAuth;
}

int? parseStringToInt(String? stringRequest) {
  // string to int
  if (stringRequest == null) {
    return null;
  }
  return int.tryParse(stringRequest);
}
