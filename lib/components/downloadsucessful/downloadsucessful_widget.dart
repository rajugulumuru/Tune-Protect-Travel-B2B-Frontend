import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'downloadsucessful_model.dart';
export 'downloadsucessful_model.dart';

class DownloadsucessfulWidget extends StatefulWidget {
  const DownloadsucessfulWidget({Key? key}) : super(key: key);

  @override
  _DownloadsucessfulWidgetState createState() =>
      _DownloadsucessfulWidgetState();
}

class _DownloadsucessfulWidgetState extends State<DownloadsucessfulWidget> {
  late DownloadsucessfulModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DownloadsucessfulModel());

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
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: Color(0x40130000),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Container(
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
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 10.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '45ymfff1' /* Sales statement downloaded suc... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
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
              ),
            ),
          if (responsiveVisibility(
            context: context,
            desktop: false,
          ))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Container(
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
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 10.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fxsdpvwe' /* Sales statement downloaded suc... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 12.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Icon(
                          Icons.close_sharp,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
