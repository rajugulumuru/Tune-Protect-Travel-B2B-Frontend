import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'creditnotestmntpopup_model.dart';
export 'creditnotestmntpopup_model.dart';

class CreditnotestmntpopupWidget extends StatefulWidget {
  const CreditnotestmntpopupWidget({Key? key}) : super(key: key);

  @override
  _CreditnotestmntpopupWidgetState createState() =>
      _CreditnotestmntpopupWidgetState();
}

class _CreditnotestmntpopupWidgetState
    extends State<CreditnotestmntpopupWidget> {
  late CreditnotestmntpopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreditnotestmntpopupModel());

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
        color: FlutterFlowTheme.of(context).creditValue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'h8zylets' /* Credit note statement download... */,
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText1Family),
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 13.0, 0.0),
              child: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
