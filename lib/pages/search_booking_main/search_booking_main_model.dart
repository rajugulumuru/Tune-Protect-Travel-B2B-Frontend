import '/backend/api_requests/api_calls.dart';
import '/components/general_search_bookings/general_search_bookings_widget.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBookingMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // Model for GeneralSearchBookings component.
  late GeneralSearchBookingsModel generalSearchBookingsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    generalSearchBookingsModel =
        createModel(context, () => GeneralSearchBookingsModel());
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    generalSearchBookingsModel.dispose();
  }

  /// Additional helper methods are added here.

}
