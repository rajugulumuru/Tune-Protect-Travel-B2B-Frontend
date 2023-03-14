import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'agency_approval_success_model.dart';
export 'agency_approval_success_model.dart';

class AgencyApprovalSuccessWidget extends StatefulWidget {
  const AgencyApprovalSuccessWidget({Key? key}) : super(key: key);

  @override
  _AgencyApprovalSuccessWidgetState createState() =>
      _AgencyApprovalSuccessWidgetState();
}

class _AgencyApprovalSuccessWidgetState
    extends State<AgencyApprovalSuccessWidget> {
  late AgencyApprovalSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AgencyApprovalSuccessModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF0A8080),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x00FFFFFF),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'znjxk1dp' /* New Agency Approved Successful... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyText1Family),
                    ),
              ),
            ),
            Icon(
              Icons.close_sharp,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
