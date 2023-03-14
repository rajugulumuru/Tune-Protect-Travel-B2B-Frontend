import '/components/hamburger_mobile/hamburger_mobile_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardSModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for hamburgerMobile component.
  late HamburgerMobileModel hamburgerMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    hamburgerMobileModel = createModel(context, () => HamburgerMobileModel());
  }

  void dispose() {
    hamburgerMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
