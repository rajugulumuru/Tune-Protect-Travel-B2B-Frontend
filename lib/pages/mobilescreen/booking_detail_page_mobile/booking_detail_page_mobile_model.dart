import '/components/top_bar_mobile/top_bar_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingDetailPageMobileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for TopBarMobile component.
  late TopBarMobileModel topBarMobileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    topBarMobileModel = createModel(context, () => TopBarMobileModel());
  }

  void dispose() {
    topBarMobileModel.dispose();
  }

  /// Additional helper methods are added here.

}
