import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserprofileMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // State field(s) for FirstName widget.
  TextEditingController? firstNameController1;
  String? Function(BuildContext, String?)? firstNameController1Validator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController1;
  String? Function(BuildContext, String?)? lastNameController1Validator;
  // State field(s) for FirstName widget.
  TextEditingController? firstNameController2;
  String? Function(BuildContext, String?)? firstNameController2Validator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController2;
  String? Function(BuildContext, String?)? lastNameController2Validator;
  // State field(s) for FirstName widget.
  TextEditingController? firstNameController3;
  String? Function(BuildContext, String?)? firstNameController3Validator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController3;
  String? Function(BuildContext, String?)? lastNameController3Validator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController4;
  String? Function(BuildContext, String?)? lastNameController4Validator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController5;
  String? Function(BuildContext, String?)? lastNameController5Validator;
  // State field(s) for FirstName widget.
  TextEditingController? firstNameController4;
  String? Function(BuildContext, String?)? firstNameController4Validator;
  // State field(s) for LastName widget.
  TextEditingController? lastNameController6;
  String? Function(BuildContext, String?)? lastNameController6Validator;
  // State field(s) for FirstName widget.
  TextEditingController? firstNameController5;
  String? Function(BuildContext, String?)? firstNameController5Validator;
  // State field(s) for Switch widget.
  bool? switchValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    firstNameController1?.dispose();
    lastNameController1?.dispose();
    firstNameController2?.dispose();
    lastNameController2?.dispose();
    firstNameController3?.dispose();
    lastNameController3?.dispose();
    lastNameController4?.dispose();
    lastNameController5?.dispose();
    firstNameController4?.dispose();
    lastNameController6?.dispose();
    firstNameController5?.dispose();
  }

  /// Additional helper methods are added here.

}
