import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreatenewuserModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for FirstName widget.
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  DateTime? datePicked;
  // State field(s) for EmailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for TelNo widget.
  TextEditingController? telNoController;
  final telNoMask = MaskTextInputFormatter(mask: '(###) ###-##-##');
  String? Function(BuildContext, String?)? telNoControllerValidator;
  // State field(s) for MobNo widget.
  TextEditingController? mobNoController;
  final mobNoMask = MaskTextInputFormatter(mask: '+# (###) ###-##-##');
  String? Function(BuildContext, String?)? mobNoControllerValidator;
  // State field(s) for BranchName widget.
  TextEditingController? branchNameController;
  String? Function(BuildContext, String?)? branchNameControllerValidator;
  // State field(s) for RoleDropDown widget.
  String? roleDropDownValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    firstNameController?.dispose();
    lastNameController?.dispose();
    emailFieldController?.dispose();
    telNoController?.dispose();
    mobNoController?.dispose();
    branchNameController?.dispose();
  }

  /// Additional helper methods are added here.

}
