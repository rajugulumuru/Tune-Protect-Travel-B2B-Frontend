import '/components/forgotpswrd/forgotpswrd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReloginMainModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for forgotpswrd component.
  late ForgotpswrdModel forgotpswrdModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    forgotpswrdModel = createModel(context, () => ForgotpswrdModel());
  }

  void dispose() {
    forgotpswrdModel.dispose();
  }

  /// Additional helper methods are added here.

}
