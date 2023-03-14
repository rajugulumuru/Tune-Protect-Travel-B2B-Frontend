import '/components/profilemngmnt/profilemngmnt_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mobile/profilemanagementmobile/profilemanagementmobile_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for profilemngmnt component.
  late ProfilemngmntModel profilemngmntModel;
  // Model for profilemanagementmobile component.
  late ProfilemanagementmobileModel profilemanagementmobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    profilemngmntModel = createModel(context, () => ProfilemngmntModel());
    profilemanagementmobileModel =
        createModel(context, () => ProfilemanagementmobileModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    profilemngmntModel.dispose();
    profilemanagementmobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
