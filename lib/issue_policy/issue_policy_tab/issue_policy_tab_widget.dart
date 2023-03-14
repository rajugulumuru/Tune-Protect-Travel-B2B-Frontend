import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'issue_policy_tab_model.dart';
export 'issue_policy_tab_model.dart';

class IssuePolicyTabWidget extends StatefulWidget {
  const IssuePolicyTabWidget({Key? key}) : super(key: key);

  @override
  _IssuePolicyTabWidgetState createState() => _IssuePolicyTabWidgetState();
}

class _IssuePolicyTabWidgetState extends State<IssuePolicyTabWidget> {
  late IssuePolicyTabModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssuePolicyTabModel());

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

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: FFAppState().IssuePolicyCurrentTab == 1
                      ? FlutterFlowTheme.of(context).identifierTextColor
                      : FlutterFlowTheme.of(context).tabCompletedText,
                  shape: BoxShape.circle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    if (FFAppState().IssuePolicyCurrentTab == 1)
                      Text(
                        FFLocalizations.of(context).getText(
                          'ppzr3zph' /* 1 */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Color(0xFFFFF2F2),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    if (FFAppState().IssuePolicyCurrentTab > 1)
                      FaIcon(
                        FontAwesomeIcons.check,
                        color: Color(0xFFFFF2F2),
                        size: 14.0,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '6ckbf5xc' /* Select Plan */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: FFAppState().IssuePolicyCurrentTab == 1
                            ? FlutterFlowTheme.of(context).identifierTextColor
                            : FlutterFlowTheme.of(context).tabCompletedText,
                        fontSize: 16.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.black,
          size: 24.0,
        ),
        Container(
          height: 24.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: () {
                    if (FFAppState().IssuePolicyCurrentTab == 2) {
                      return FlutterFlowTheme.of(context).identifierTextColor;
                    } else if (FFAppState().IssuePolicyCurrentTab > 2) {
                      return FlutterFlowTheme.of(context).tabCompletedText;
                    } else {
                      return FlutterFlowTheme.of(context).tabDimTextColor;
                    }
                  }(),
                  shape: BoxShape.circle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    if (FFAppState().IssuePolicyCurrentTab <= 2)
                      Text(
                        FFLocalizations.of(context).getText(
                          'ehy3gwwv' /* 2 */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Color(0xFFFFF2F2),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    if (FFAppState().IssuePolicyCurrentTab > 2)
                      FaIcon(
                        FontAwesomeIcons.check,
                        color: Color(0xFFFFF2F2),
                        size: 14.0,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'l473yqng' /* Travel Details */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: () {
                          if (FFAppState().IssuePolicyCurrentTab == 2) {
                            return FlutterFlowTheme.of(context)
                                .identifierTextColor;
                          } else if (FFAppState().IssuePolicyCurrentTab > 2) {
                            return FlutterFlowTheme.of(context)
                                .tabCompletedText;
                          } else {
                            return FlutterFlowTheme.of(context).tabDimTextColor;
                          }
                        }(),
                        fontSize: 16.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.black,
          size: 24.0,
        ),
        Container(
          height: 24.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: () {
                    if (FFAppState().IssuePolicyCurrentTab == 3) {
                      return FlutterFlowTheme.of(context).identifierTextColor;
                    } else if (FFAppState().IssuePolicyCurrentTab > 3) {
                      return FlutterFlowTheme.of(context).tabCompletedText;
                    } else {
                      return FlutterFlowTheme.of(context).tabDimTextColor;
                    }
                  }(),
                  shape: BoxShape.circle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    if (FFAppState().IssuePolicyCurrentTab <= 3)
                      Text(
                        FFLocalizations.of(context).getText(
                          'hu4s9a8o' /* 3 */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Color(0xFFFFF2F2),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    if (FFAppState().IssuePolicyCurrentTab > 3)
                      FaIcon(
                        FontAwesomeIcons.check,
                        color: Color(0xFFFFF2F2),
                        size: 14.0,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'v8i5woq0' /* Traveler Info */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: () {
                          if (FFAppState().IssuePolicyCurrentTab == 3) {
                            return FlutterFlowTheme.of(context)
                                .identifierTextColor;
                          } else if (FFAppState().IssuePolicyCurrentTab > 3) {
                            return FlutterFlowTheme.of(context)
                                .tabCompletedText;
                          } else {
                            return FlutterFlowTheme.of(context).tabDimTextColor;
                          }
                        }(),
                        fontSize: 16.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.black,
          size: 24.0,
        ),
        Container(
          height: 24.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 24.0,
                height: 24.0,
                decoration: BoxDecoration(
                  color: () {
                    if (FFAppState().IssuePolicyCurrentTab == 4) {
                      return FlutterFlowTheme.of(context).identifierTextColor;
                    } else if (FFAppState().IssuePolicyCurrentTab > 4) {
                      return FlutterFlowTheme.of(context).tabCompletedText;
                    } else {
                      return FlutterFlowTheme.of(context).tabDimTextColor;
                    }
                  }(),
                  shape: BoxShape.circle,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    if (FFAppState().IssuePolicyCurrentTab <= 4)
                      Text(
                        FFLocalizations.of(context).getText(
                          'sr0kyrwv' /* 4 */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: Color(0xFFFFF2F2),
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    if (FFAppState().IssuePolicyCurrentTab > 4)
                      FaIcon(
                        FontAwesomeIcons.check,
                        color: Color(0xFFFFF2F2),
                        size: 14.0,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'mme92h40' /* Confirmation */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: () {
                          if (FFAppState().IssuePolicyCurrentTab == 4) {
                            return FlutterFlowTheme.of(context)
                                .identifierTextColor;
                          } else if (FFAppState().IssuePolicyCurrentTab > 4) {
                            return FlutterFlowTheme.of(context)
                                .tabCompletedText;
                          } else {
                            return FlutterFlowTheme.of(context).tabDimTextColor;
                          }
                        }(),
                        fontSize: 16.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.black,
          size: 24.0,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 36.0, 0.0),
          child: Container(
            height: 24.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: FFAppState().IssuePolicyCurrentTab == 5
                        ? FlutterFlowTheme.of(context).tabCompletedText
                        : FlutterFlowTheme.of(context).tabDimTextColor,
                    shape: BoxShape.circle,
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Stack(
                    children: [
                      if (FFAppState().IssuePolicyCurrentTab <= 4)
                        Text(
                          FFLocalizations.of(context).getText(
                            '7vbj912c' /* 5 */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                color: Color(0xFFFFF2F2),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      if (FFAppState().IssuePolicyCurrentTab == 5)
                        FaIcon(
                          FontAwesomeIcons.check,
                          color: Color(0xFFFFF2F2),
                          size: 14.0,
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '38nks5i0' /* Policy */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyText1Family,
                          color: FFAppState().IssuePolicyCurrentTab == 5
                              ? FlutterFlowTheme.of(context).tabCompletedText
                              : FlutterFlowTheme.of(context).tabDimTextColor,
                          fontSize: 16.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyText1Family),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
