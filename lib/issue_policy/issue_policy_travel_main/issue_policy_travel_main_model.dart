import '/components/i_p_traveler_details_card_mobile/i_p_traveler_details_card_mobile_widget.dart';
import '/components/top_bar_mobile/top_bar_mobile_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/issue_policy/issue_confirmation/issue_confirmation_widget.dart';
import '/issue_policy/issue_plan_type/issue_plan_type_widget.dart';
import '/issue_policy/issue_policy_tab/issue_policy_tab_widget.dart';
import '/issue_policy/issue_success_policy/issue_success_policy_widget.dart';
import '/issue_policy/issue_travel_details/issue_travel_details_widget.dart';
import '/issue_policy/issue_traveler_info/issue_traveler_info_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IssuePolicyTravelMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for IssuePolicyTab component.
  late IssuePolicyTabModel issuePolicyTabModel;
  // Model for IssuePlanType component.
  late IssuePlanTypeModel issuePlanTypeModel;
  // Model for IssueTravelDetails component.
  late IssueTravelDetailsModel issueTravelDetailsModel;
  // Model for IssueTravelerInfo component.
  late IssueTravelerInfoModel issueTravelerInfoModel;
  // Model for IssueConfirmation component.
  late IssueConfirmationModel issueConfirmationModel;
  // Model for IssueSuccessPolicy component.
  late IssueSuccessPolicyModel issueSuccessPolicyModel;
  // Model for TopBarMobile component.
  late TopBarMobileModel topBarMobileModel;
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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    issuePolicyTabModel = createModel(context, () => IssuePolicyTabModel());
    issuePlanTypeModel = createModel(context, () => IssuePlanTypeModel());
    issueTravelDetailsModel =
        createModel(context, () => IssueTravelDetailsModel());
    issueTravelerInfoModel =
        createModel(context, () => IssueTravelerInfoModel());
    issueConfirmationModel =
        createModel(context, () => IssueConfirmationModel());
    issueSuccessPolicyModel =
        createModel(context, () => IssueSuccessPolicyModel());
    topBarMobileModel = createModel(context, () => TopBarMobileModel());
    iPTravelerDetailsCardMobileModel =
        createModel(context, () => IPTravelerDetailsCardMobileModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    issuePolicyTabModel.dispose();
    issuePlanTypeModel.dispose();
    issueTravelDetailsModel.dispose();
    issueTravelerInfoModel.dispose();
    issueConfirmationModel.dispose();
    issueSuccessPolicyModel.dispose();
    topBarMobileModel.dispose();
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
  }

  /// Additional helper methods are added here.

}
