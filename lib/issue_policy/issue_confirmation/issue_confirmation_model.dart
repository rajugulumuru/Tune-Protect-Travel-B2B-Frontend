import '/components/i_p_traveler_details_card/i_p_traveler_details_card_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IssueConfirmationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for IPTravelerDetailsCard component.
  late IPTravelerDetailsCardModel iPTravelerDetailsCardModel;
  // State field(s) for RadioButton widget.
  String? radioButtonValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    iPTravelerDetailsCardModel =
        createModel(context, () => IPTravelerDetailsCardModel());
  }

  void dispose() {
    iPTravelerDetailsCardModel.dispose();
  }

  /// Additional helper methods are added here.

}
