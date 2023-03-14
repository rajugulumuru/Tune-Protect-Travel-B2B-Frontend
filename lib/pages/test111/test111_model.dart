import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Test111Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailtrxtfield widget.
  TextEditingController? emailtrxtfieldController;
  String? Function(BuildContext, String?)? emailtrxtfieldControllerValidator;
  // State field(s) for pwtxtfield widget.
  TextEditingController? pwtxtfieldController;
  late bool pwtxtfieldVisibility;
  String? Function(BuildContext, String?)? pwtxtfieldControllerValidator;
  // State field(s) for emailtrxtfieldb widget.
  TextEditingController? emailtrxtfieldbController;
  String? Function(BuildContext, String?)? emailtrxtfieldbControllerValidator;
  // State field(s) for pwtxtfieldb widget.
  TextEditingController? pwtxtfieldbController;
  late bool pwtxtfieldbVisibility;
  String? Function(BuildContext, String?)? pwtxtfieldbControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pwtxtfieldVisibility = false;
    pwtxtfieldbVisibility = false;
  }

  void dispose() {
    emailtrxtfieldController?.dispose();
    pwtxtfieldController?.dispose();
    emailtrxtfieldbController?.dispose();
    pwtxtfieldbController?.dispose();
  }

  /// Additional helper methods are added here.

}
