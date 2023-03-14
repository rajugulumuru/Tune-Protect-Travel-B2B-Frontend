import '/components/policystate_widget.dart';
import '/components/top_bar_mobile/top_bar_mobile_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PolicyStatementMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for policystate component.
  late PolicystateModel policystateModel1;
  // Model for TopBarMobile component.
  late TopBarMobileModel topBarMobileModel;
  // Model for policystate component.
  late PolicystateModel policystateModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    policystateModel1 = createModel(context, () => PolicystateModel());
    topBarMobileModel = createModel(context, () => TopBarMobileModel());
    policystateModel2 = createModel(context, () => PolicystateModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    policystateModel1.dispose();
    topBarMobileModel.dispose();
    policystateModel2.dispose();
  }

  /// Additional helper methods are added here.

}
