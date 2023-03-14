import '/backend/api_requests/api_calls.dart';
import '/components/debitnotestmntpopup/debitnotestmntpopup_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'debitnotestmnt_main_model.dart';
export 'debitnotestmnt_main_model.dart';

class DebitnotestmntMainWidget extends StatefulWidget {
  const DebitnotestmntMainWidget({Key? key}) : super(key: key);

  @override
  _DebitnotestmntMainWidgetState createState() =>
      _DebitnotestmntMainWidgetState();
}

class _DebitnotestmntMainWidgetState extends State<DebitnotestmntMainWidget> {
  late DebitnotestmntMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DebitnotestmntMainModel());

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ts08qjkx' /* Download Debit Note Statement */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              fontSize: 24.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 3.0, 0.0),
                  child: Wrap(
                    spacing: 0.0,
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'j4yfxiv7' /* Country */,
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
                                  'd8kdjlxd' /* Malaysia */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'fxxlyt4d' /* Thailand */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue1 = val),
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
                                'tluwv3xc' /* -- All -- */,
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'culvn3ll' /* Agency */,
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
                                  'rn77b4xg' /* Option 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'jx2wry33' /* 2 */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue2 = val),
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
                                '8xck65zu' /* -- All -- */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 3.0, 0.0),
                  child: Wrap(
                    spacing: 0.0,
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'bshp0k9z' /* Month */,
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
                                  'rcxlwdjm' /* 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'my213sjj' /* 2 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'q8zlhfnf' /* 3 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '51szoqq9' /* 4 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'hianayxb' /* 5 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'lz6muwez' /* 6 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ihwmgiy5' /* 7 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'ogaed47g' /* 8 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  'x1imib8r' /* 9 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '5nvaoo6q' /* 10 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8ayw0pfh' /* 11 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '8locq9dz' /* 12 */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue3 = val),
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
                                'wre84pfn' /* -- All -- */,
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                't1uk7a7y' /* Year */,
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
                                  '9za54lxh' /* Option 1 */,
                                ),
                                FFLocalizations.of(context).getText(
                                  '53voh36h' /* 2 */,
                                )
                              ],
                              onChanged: (val) =>
                                  setState(() => _model.dropDownValue4 = val),
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
                                'prk7nj9y' /* -- All -- */,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'y39n3k4r' /* Close */,
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
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: ITravelGroup.payableCalculatorCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final buttonPayableCalculatorResponse =
                                snapshot.data!;
                            return FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultkxl = await ITravelGroup
                                    .payableCalculatorCall
                                    .call(
                                  agencyName: _model.dropDownValue2,
                                  type: 0,
                                  month: functions
                                      .parseStringToInt(_model.dropDownValue3),
                                  year: functions
                                      .parseStringToInt(_model.dropDownValue4),
                                );
                                if ((_model.apiResultkxl?.succeeded ?? true)) {
                                  context.pushNamed('dashboardMain');

                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: DebitnotestmntpopupWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'something went wrong',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0x00000000),
                                    ),
                                  );
                                }

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'xaaj4v2j' /* Download */,
                              ),
                              options: FFButtonOptions(
                                width: 195.0,
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
                            );
                          },
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
    );
  }
}
