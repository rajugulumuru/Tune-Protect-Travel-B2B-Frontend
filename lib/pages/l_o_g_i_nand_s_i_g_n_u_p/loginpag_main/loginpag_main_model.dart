import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginpagMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for agentEmailTextField widget.
  TextEditingController? agentEmailTextFieldController;
  String? Function(BuildContext, String?)?
      agentEmailTextFieldControllerValidator;
  String? _agentEmailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'r5bkxzfn' /* Field is required */,
      );
    }

    if (!RegExp('^\\w+([\\.-]?\\w+)@\\w+([\\.-]?\\w+)(\\.\\w{2,3})+\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'gj5mfpzl' /* Enter valid email id or userna... */,
      );
    }
    return null;
  }

  // State field(s) for agentPwtxtField widget.
  TextEditingController? agentPwtxtFieldController;
  late bool agentPwtxtFieldVisibility;
  String? Function(BuildContext, String?)? agentPwtxtFieldControllerValidator;
  String? _agentPwtxtFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l73y3rx0' /* Field is required */,
      );
    }

    if (!RegExp('^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'sf2i0rbi' /* invalid password */,
      );
    }
    return null;
  }

  Completer<List<TempUsersRecord>>? firestoreRequestCompleter;
  // State field(s) for bussinessEmailTextField widget.
  TextEditingController? bussinessEmailTextFieldController;
  String? Function(BuildContext, String?)?
      bussinessEmailTextFieldControllerValidator;
  String? _bussinessEmailTextFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'us4cvjd7' /* Field is required */,
      );
    }

    if (!RegExp('^\\w+([\\.-]?\\w+)@\\w+([\\.-]?\\w+)(\\.\\w{2,3})+\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'rqptwfxx' /* Enter valid email id or userna... */,
      );
    }
    return null;
  }

  // State field(s) for bussinessPwtxtField widget.
  TextEditingController? bussinessPwtxtFieldController;
  late bool bussinessPwtxtFieldVisibility;
  String? Function(BuildContext, String?)?
      bussinessPwtxtFieldControllerValidator;
  String? _bussinessPwtxtFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cywpci5f' /* Field is required */,
      );
    }

    if (!RegExp('^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '446ojtc2' /* Invalid password */,
      );
    }
    return null;
  }

  // State field(s) for emailtrxtfield1 widget.
  TextEditingController? emailtrxtfield1Controller;
  String? Function(BuildContext, String?)? emailtrxtfield1ControllerValidator;
  String? _emailtrxtfield1ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ikshx7he' /* Field is required */,
      );
    }

    if (!RegExp('^\\w+([\\.-]?\\w+)@\\w+([\\.-]?\\w+)(\\.\\w{2,3})+\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '88nklp6c' /* Invalid mail */,
      );
    }
    return null;
  }

  // State field(s) for pwtxtfield1 widget.
  TextEditingController? pwtxtfield1Controller;
  late bool pwtxtfield1Visibility;
  String? Function(BuildContext, String?)? pwtxtfield1ControllerValidator;
  String? _pwtxtfield1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'x4iqgbuc' /* Field is required */,
      );
    }

    if (!RegExp('^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7tzwg54f' /* invalid password */,
      );
    }
    return null;
  }

  // State field(s) for emailtrxtfield widget.
  TextEditingController? emailtrxtfieldController;
  String? Function(BuildContext, String?)? emailtrxtfieldControllerValidator;
  String? _emailtrxtfieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tp8iei4u' /* Field is required */,
      );
    }

    if (!RegExp('^\\w+([\\.-]?\\w+)@\\w+([\\.-]?\\w+)(\\.\\w{2,3})+\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'teqvh6gd' /* invalid email */,
      );
    }
    return null;
  }

  // State field(s) for pwtxtfield widget.
  TextEditingController? pwtxtfieldController;
  late bool pwtxtfieldVisibility;
  String? Function(BuildContext, String?)? pwtxtfieldControllerValidator;
  String? _pwtxtfieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ewjm02b7' /* Field is required */,
      );
    }

    if (!RegExp('^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '16uuv3wu' /* invalid password */,
      );
    }
    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    agentEmailTextFieldControllerValidator =
        _agentEmailTextFieldControllerValidator;
    agentPwtxtFieldVisibility = false;
    agentPwtxtFieldControllerValidator = _agentPwtxtFieldControllerValidator;
    bussinessEmailTextFieldControllerValidator =
        _bussinessEmailTextFieldControllerValidator;
    bussinessPwtxtFieldVisibility = false;
    bussinessPwtxtFieldControllerValidator =
        _bussinessPwtxtFieldControllerValidator;
    emailtrxtfield1ControllerValidator = _emailtrxtfield1ControllerValidator;
    pwtxtfield1Visibility = false;
    pwtxtfield1ControllerValidator = _pwtxtfield1ControllerValidator;
    emailtrxtfieldControllerValidator = _emailtrxtfieldControllerValidator;
    pwtxtfieldVisibility = false;
    pwtxtfieldControllerValidator = _pwtxtfieldControllerValidator;
  }

  void dispose() {
    agentEmailTextFieldController?.dispose();
    agentPwtxtFieldController?.dispose();
    bussinessEmailTextFieldController?.dispose();
    bussinessPwtxtFieldController?.dispose();
    emailtrxtfield1Controller?.dispose();
    pwtxtfield1Controller?.dispose();
    emailtrxtfieldController?.dispose();
    pwtxtfieldController?.dispose();
  }

  /// Additional helper methods are added here.

  Future waitForFirestoreRequestCompleter({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
