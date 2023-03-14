import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgencyRegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController24;
  String? Function(BuildContext, String?)? textController24Validator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for RadioButton widget.
  String? radioButtonValue1;
  // State field(s) for CreditComm widget.
  TextEditingController? creditCommController;
  String? Function(BuildContext, String?)? creditCommControllerValidator;
  // State field(s) for CreditOverComm widget.
  TextEditingController? creditOverCommController;
  String? Function(BuildContext, String?)? creditOverCommControllerValidator;
  // State field(s) for RadioButton widget.
  String? radioButtonValue2;
  // State field(s) for PayComm widget.
  TextEditingController? payCommController;
  String? Function(BuildContext, String?)? payCommControllerValidator;
  // State field(s) for PayOverComm widget.
  TextEditingController? payOverCommController;
  String? Function(BuildContext, String?)? payOverCommControllerValidator;
  // State field(s) for Credit widget.
  TextEditingController? creditController;
  String? Function(BuildContext, String?)? creditControllerValidator;
  // State field(s) for AgencyCode widget.
  TextEditingController? agencyCodeController;
  String? Function(BuildContext, String?)? agencyCodeControllerValidator;
  // State field(s) for PseudoApiCode widget.
  TextEditingController? pseudoApiCodeController;
  String? Function(BuildContext, String?)? pseudoApiCodeControllerValidator;
  // State field(s) for RadioButtonDebitNote widget.
  String? radioButtonDebitNoteValue;
  // State field(s) for RadioButton widget.
  String? radioButtonValue3;
  // State field(s) for RadioButton widget.
  String? radioButtonValue4;
  // State field(s) for Reason widget.
  TextEditingController? reasonController;
  String? Function(BuildContext, String?)? reasonControllerValidator;
  // State field(s) for AccManagerName widget.
  TextEditingController? accManagerNameController;
  String? Function(BuildContext, String?)? accManagerNameControllerValidator;
  // State field(s) for AccManagerEmail widget.
  TextEditingController? accManagerEmailController;
  String? Function(BuildContext, String?)? accManagerEmailControllerValidator;
  // State field(s) for AccountManagerNo widget.
  TextEditingController? accountManagerNoController;
  String? Function(BuildContext, String?)? accountManagerNoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    textController7?.dispose();
    textController8?.dispose();
    textController9?.dispose();
    textController10?.dispose();
    textController11?.dispose();
    textController12?.dispose();
    textController13?.dispose();
    textController14?.dispose();
    textController15?.dispose();
    textController16?.dispose();
    textController17?.dispose();
    textController18?.dispose();
    textController19?.dispose();
    textController20?.dispose();
    textController21?.dispose();
    textController22?.dispose();
    textController23?.dispose();
    textController24?.dispose();
    creditCommController?.dispose();
    creditOverCommController?.dispose();
    payCommController?.dispose();
    payOverCommController?.dispose();
    creditController?.dispose();
    agencyCodeController?.dispose();
    pseudoApiCodeController?.dispose();
    reasonController?.dispose();
    accManagerNameController?.dispose();
    accManagerEmailController?.dispose();
    accountManagerNoController?.dispose();
  }

  /// Additional helper methods are added here.

}
