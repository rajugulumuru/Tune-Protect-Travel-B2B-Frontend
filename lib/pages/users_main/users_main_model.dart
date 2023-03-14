import '/backend/backend.dart';
import '/components/createnewuser/createnewuser_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsersMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for createnewuser component.
  late CreatenewuserModel createnewuserModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    createnewuserModel = createModel(context, () => CreatenewuserModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    createnewuserModel.dispose();
  }

  /// Additional helper methods are added here.

}
