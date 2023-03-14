import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'password_changedsuccess_model.dart';
export 'password_changedsuccess_model.dart';

class PasswordChangedsuccessWidget extends StatefulWidget {
  const PasswordChangedsuccessWidget({Key? key}) : super(key: key);

  @override
  _PasswordChangedsuccessWidgetState createState() =>
      _PasswordChangedsuccessWidgetState();
}

class _PasswordChangedsuccessWidgetState
    extends State<PasswordChangedsuccessWidget> {
  late PasswordChangedsuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PasswordChangedsuccessModel());

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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
            child: Text(
              FFLocalizations.of(context).getText(
                '4sosxsst' /* Password changed successfully */,
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
    );
  }
}
