import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class Signup1MainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for regoffdrpdwnW widget.
  String? regoffdrpdwnWValue;
  // State field(s) for companynameW widget.
  TextEditingController? companynameWController;
  String? Function(BuildContext, String?)? companynameWControllerValidator;
  String? _companynameWControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'n4ytos3q' /* Enter valid username */,
      );
    }
    return null;
  }

  // State field(s) for regoffadressW widget.
  TextEditingController? regoffadressWController;
  String? Function(BuildContext, String?)? regoffadressWControllerValidator;
  String? _regoffadressWControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for nameW widget.
  TextEditingController? nameWController;
  String? Function(BuildContext, String?)? nameWControllerValidator;
  String? _nameWControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'jhvfmgux' /* Enter valid name */,
      );
    }
    return null;
  }

  // State field(s) for emailW widget.
  TextEditingController? emailWController;
  String? Function(BuildContext, String?)? emailWControllerValidator;
  String? _emailWControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oarymcrk' /* field required */,
      );
    }

    if (!RegExp('^\\w+([\\.-]?\\w+)@\\w+([\\.-]?\\w+)(\\.\\w{2,3})+\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'lrjlydfu' /* Enter valid Email */,
      );
    }
    return null;
  }

  // State field(s) for phnnumberW widget.
  TextEditingController? phnnumberWController;
  final phnnumberWMask = MaskTextInputFormatter(mask: '+66 ##########');
  String? Function(BuildContext, String?)? phnnumberWControllerValidator;
  String? _phnnumberWControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rq33ihez' /* field required */,
      );
    }

    if (val.length > 14) {
      return 'Maximum 14 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for CheckboxDesktop widget.
  bool? checkboxDesktopValue;
  // State field(s) for regoffdrpdwnM widget.
  String? regoffdrpdwnMValue;
  // State field(s) for companynameM widget.
  TextEditingController? companynameMController;
  String? Function(BuildContext, String?)? companynameMControllerValidator;
  String? _companynameMControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '9a8fs5zd' /* enter valid name */,
      );
    }
    return null;
  }

  // State field(s) for regoffadressM widget.
  TextEditingController? regoffadressMController;
  String? Function(BuildContext, String?)? regoffadressMControllerValidator;
  String? _regoffadressMControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for nameM widget.
  TextEditingController? nameMController;
  String? Function(BuildContext, String?)? nameMControllerValidator;
  String? _nameMControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'awqu40hs' /* venter valid name */,
      );
    }
    return null;
  }

  // State field(s) for emailM widget.
  TextEditingController? emailMController;
  String? Function(BuildContext, String?)? emailMControllerValidator;
  String? _emailMControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '3iwvh65s' /* enter valid name */,
      );
    }
    return null;
  }

  // State field(s) for phnnumberM widget.
  TextEditingController? phnnumberMController;
  final phnnumberMMask = MaskTextInputFormatter(mask: '+66 ##########');
  String? Function(BuildContext, String?)? phnnumberMControllerValidator;
  String? _phnnumberMControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 14) {
      return 'Maximum 14 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for CheckboxMobile widget.
  bool? checkboxMobileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    companynameWControllerValidator = _companynameWControllerValidator;
    regoffadressWControllerValidator = _regoffadressWControllerValidator;
    nameWControllerValidator = _nameWControllerValidator;
    emailWControllerValidator = _emailWControllerValidator;
    phnnumberWControllerValidator = _phnnumberWControllerValidator;
    companynameMControllerValidator = _companynameMControllerValidator;
    regoffadressMControllerValidator = _regoffadressMControllerValidator;
    nameMControllerValidator = _nameMControllerValidator;
    emailMControllerValidator = _emailMControllerValidator;
    phnnumberMControllerValidator = _phnnumberMControllerValidator;
  }

  void dispose() {
    companynameWController?.dispose();
    regoffadressWController?.dispose();
    nameWController?.dispose();
    emailWController?.dispose();
    phnnumberWController?.dispose();
    companynameMController?.dispose();
    regoffadressMController?.dispose();
    nameMController?.dispose();
    emailMController?.dispose();
    phnnumberMController?.dispose();
  }

  /// Additional helper methods are added here.

}
