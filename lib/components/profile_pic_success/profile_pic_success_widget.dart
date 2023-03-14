import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_pic_success_model.dart';
export 'profile_pic_success_model.dart';

class ProfilePicSuccessWidget extends StatefulWidget {
  const ProfilePicSuccessWidget({Key? key}) : super(key: key);

  @override
  _ProfilePicSuccessWidgetState createState() =>
      _ProfilePicSuccessWidgetState();
}

class _ProfilePicSuccessWidgetState extends State<ProfilePicSuccessWidget> {
  late ProfilePicSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePicSuccessModel());

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
      width: 430.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Color(0xFF0A8080),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: Color(0x00FFFFFF),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '7skimwbe' /* Profile picture updated succes... */,
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
