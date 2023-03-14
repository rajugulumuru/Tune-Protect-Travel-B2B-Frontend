import '/components/hamburger_mobile/hamburger_mobile_widget.dart';
import '/components/i_p_traveler_details_card_mobile/i_p_traveler_details_card_mobile_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IssuePolicy1SModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for regoffdrpdwn widget.
  String? regoffdrpdwnValue1;
  // State field(s) for regoffdrpdwn widget.
  String? regoffdrpdwnValue2;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for regoffdrpdwn widget.
  String? regoffdrpdwnValue3;
  // State field(s) for regoffdrpdwn widget.
  String? regoffdrpdwnValue4;
  // State field(s) for regoffdrpdwn widget.
  String? regoffdrpdwnValue5;
  // State field(s) for regoffdrpdwn widget.
  String? regoffdrpdwnValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for TextField widget.
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  // State field(s) for TextField widget.
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  // State field(s) for TextField widget.
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  // State field(s) for TextField widget.
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // Model for IPTravelerDetailsCardMobile component.
  late IPTravelerDetailsCardMobileModel iPTravelerDetailsCardMobileModel;
  // State field(s) for RadioButton widget.
  String? radioButtonValue;
  // Model for hamburgerMobile component.
  late HamburgerMobileModel hamburgerMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    iPTravelerDetailsCardMobileModel =
        createModel(context, () => IPTravelerDetailsCardMobileModel());
    hamburgerMobileModel = createModel(context, () => HamburgerMobileModel());
  }

  void dispose() {
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
    iPTravelerDetailsCardMobileModel.dispose();
    hamburgerMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
