import '/components/hamburger_mobile/hamburger_mobile_widget.dart';
import '/components/top_bar_mobile/top_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValueAddedServicesSModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for TopBarMobile component.
  late TopBarMobileModel topBarMobileModel;
  // Model for hamburgerMobile component.
  late HamburgerMobileModel hamburgerMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topBarMobileModel = createModel(context, () => TopBarMobileModel());
    hamburgerMobileModel = createModel(context, () => HamburgerMobileModel());
  }

  void dispose() {
    topBarMobileModel.dispose();
    hamburgerMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
