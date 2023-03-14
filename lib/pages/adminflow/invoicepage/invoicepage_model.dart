import '/components/top_bar_mobile/top_bar_mobile_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InvoicepageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for TopBarMobile component.
  late TopBarMobileModel topBarMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    topBarMobileModel = createModel(context, () => TopBarMobileModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    topBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
