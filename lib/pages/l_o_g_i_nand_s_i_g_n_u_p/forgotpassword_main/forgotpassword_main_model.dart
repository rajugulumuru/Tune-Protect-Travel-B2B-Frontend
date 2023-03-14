import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotpasswordMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for FPWemail widget.
  TextEditingController? fPWemailController;
  String? Function(BuildContext, String?)? fPWemailControllerValidator;
  String? _fPWemailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pv7t90kz' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vgckagvv' /* Invalid email */,
      );
    }
    return null;
  }

  // State field(s) for TextField1 widget.
  TextEditingController? textField1Controller;
  String? Function(BuildContext, String?)? textField1ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    fPWemailControllerValidator = _fPWemailControllerValidator;
  }

  void dispose() {
    fPWemailController?.dispose();
    textField1Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
