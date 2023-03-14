import '/components/declaration1/declaration1_widget.dart';
import '/components/declaration2/declaration2_widget.dart';
import '/components/declaration3/declaration3_widget.dart';
import '/components/notificationbar/notificationbar_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValueaddedservicDESKTOPModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for notificationbar component.
  late NotificationbarModel notificationbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    notificationbarModel = createModel(context, () => NotificationbarModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    notificationbarModel.dispose();
  }

  /// Additional helper methods are added here.

}
