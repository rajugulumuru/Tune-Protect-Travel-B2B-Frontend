import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_added_successfully_model.dart';
export 'user_added_successfully_model.dart';

class UserAddedSuccessfullyWidget extends StatefulWidget {
  const UserAddedSuccessfullyWidget({Key? key}) : super(key: key);

  @override
  _UserAddedSuccessfullyWidgetState createState() =>
      _UserAddedSuccessfullyWidgetState();
}

class _UserAddedSuccessfullyWidgetState
    extends State<UserAddedSuccessfullyWidget> {
  late UserAddedSuccessfullyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserAddedSuccessfullyModel());

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
                'eocwarwq' /* User Added Successfully */,
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
