import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dwnloadsalesstmnt_main_model.dart';
export 'dwnloadsalesstmnt_main_model.dart';

class DwnloadsalesstmntMainWidget extends StatefulWidget {
  const DwnloadsalesstmntMainWidget({Key? key}) : super(key: key);

  @override
  _DwnloadsalesstmntMainWidgetState createState() =>
      _DwnloadsalesstmntMainWidgetState();
}

class _DwnloadsalesstmntMainWidgetState
    extends State<DwnloadsalesstmntMainWidget> {
  late DwnloadsalesstmntMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DwnloadsalesstmntMainModel());

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
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Container(
          width: 1014.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '7jcu5r6f' /* Download Sales Statement */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                fontSize: 24.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.close_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 29.0,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 3.0, 0.0),
                    child: Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 462.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '46r5yaqd' /* Country */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              FlutterFlowDropDown<String>(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'ahaj9o0t' /* Option 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'o25ra9mx' /* 2 */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDown1Value = val),
                                height: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'u3a9fnjk' /* -- All -- */,
                                ),
                                icon: Icon(
                                  Icons.unfold_more_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .identifierTextColor,
                                  size: 15.0,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 0.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                hidesUnderline: true,
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 462.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'xye0kefm' /* Agency */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              FlutterFlowDropDown<String>(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'um0cih3p' /* Option 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'ours91n8' /* 2 */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDown2Value = val),
                                height: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'kjzt9j7l' /* -- All -- */,
                                ),
                                icon: Icon(
                                  Icons.unfold_more_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .identifierTextColor,
                                  size: 15.0,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 0.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                hidesUnderline: true,
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 3.0, 0.0),
                    child: Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 462.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '364m1rur' /* Month */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              FlutterFlowDropDown<String>(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    'sxa0jez6' /* 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'zf9bo2ye' /* 2 */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDown3Value = val),
                                height: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  '6jcggdhq' /* -- All -- */,
                                ),
                                icon: Icon(
                                  Icons.unfold_more_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .identifierTextColor,
                                  size: 15.0,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 0.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                hidesUnderline: true,
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 462.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '3aps4q7v' /* Year */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              FlutterFlowDropDown<String>(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    '95wuadek' /* Option 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'sk0klwr5' /* 2 */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDown4Value = val),
                                height: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'jqkm9yp7' /* -- All -- */,
                                ),
                                icon: Icon(
                                  Icons.unfold_more_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .identifierTextColor,
                                  size: 15.0,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 0.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                hidesUnderline: true,
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 3.0, 0.0),
                    child: Wrap(
                      spacing: 20.0,
                      runSpacing: 0.0,
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 462.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'h2iqrob8' /* Currency */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              FlutterFlowDropDown<String>(
                                options: [
                                  FFLocalizations.of(context).getText(
                                    '0wvlqmul' /* Option 1 */,
                                  ),
                                  FFLocalizations.of(context).getText(
                                    'pv27lzcr' /* 2 */,
                                  )
                                ],
                                onChanged: (val) =>
                                    setState(() => _model.dropDown5Value = val),
                                height: 25.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                                hintText: FFLocalizations.of(context).getText(
                                  'rr3k96ka' /* -- All -- */,
                                ),
                                icon: Icon(
                                  Icons.unfold_more_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .identifierTextColor,
                                  size: 15.0,
                                ),
                                fillColor: Colors.white,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: 0.0,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                hidesUnderline: true,
                              ),
                              Divider(
                                thickness: 1.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 462.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'zrop53g1' /* Close */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  color: FlutterFlowTheme.of(context)
                                      .identifierTextColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyText1Family),
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              _model.apiResultmkp =
                                  await ITravelGroup.saleStatementCall.call(
                                agencyName: _model.dropDown2Value,
                                month: functions
                                    .parseStringToInt(_model.dropDown3Value),
                                year: functions
                                    .parseStringToInt(_model.dropDown4Value),
                              );

                              setState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'yhp6ubdy' /* Download */,
                            ),
                            options: FFButtonOptions(
                              width: 146.0,
                              height: 44.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .identifierTextColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .subtitle2Family,
                                    color: Colors.white,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .subtitle2Family),
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
