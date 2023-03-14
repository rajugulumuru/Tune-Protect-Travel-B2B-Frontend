import '/components/profilemanagementmobile_edit_widget.dart';
import '/components/profilemngmnt_edit_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageProfileEditModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for profilemngmntEdit component.
  late ProfilemngmntEditModel profilemngmntEditModel;
  // Model for profilemanagementmobileEdit component.
  late ProfilemanagementmobileEditModel profilemanagementmobileEditModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    profilemngmntEditModel =
        createModel(context, () => ProfilemngmntEditModel());
    profilemanagementmobileEditModel =
        createModel(context, () => ProfilemanagementmobileEditModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    profilemngmntEditModel.dispose();
    profilemanagementmobileEditModel.dispose();
  }

  /// Additional helper methods are added here.

}
