import '/backend/api_requests/api_calls.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mobile/mobile_side_drawer/mobile_side_drawer_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetPoliciesSummary)] action in dashboardMain widget.
  ApiCallResponse? getpolicySummaryOutput;
  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for MobileSideDrawer component.
  late MobileSideDrawerModel mobileSideDrawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    mobileSideDrawerModel = createModel(context, () => MobileSideDrawerModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    mobileSideDrawerModel.dispose();
  }

  /// Additional helper methods are added here.

}
