import '/backend/backend.dart';
import '/components/web_sid_nav_bar_left/web_sid_nav_bar_left_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgenciesMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WebSidNavBarLeft component.
  late WebSidNavBarLeftModel webSidNavBarLeftModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    webSidNavBarLeftModel = createModel(context, () => WebSidNavBarLeftModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    webSidNavBarLeftModel.dispose();
    textController?.dispose();
  }

  /// Additional helper methods are added here.

}
