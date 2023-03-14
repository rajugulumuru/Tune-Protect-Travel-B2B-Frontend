import '/backend/api_requests/api_calls.dart';
import '/components/creditnotepopup/creditnotepopup_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'creditnotestmt_main_model.dart';
export 'creditnotestmt_main_model.dart';

class CreditnotestmtMainWidget extends StatefulWidget {
  const CreditnotestmtMainWidget({Key? key}) : super(key: key);

  @override
  _CreditnotestmtMainWidgetState createState() =>
      _CreditnotestmtMainWidgetState();
}

class _CreditnotestmtMainWidgetState extends State<CreditnotestmtMainWidget> {
  late CreditnotestmtMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreditnotestmtMainModel());

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
                        color: FlutterFlowTheme.of(context).primaryColor,
                      ),
                    ),
                  );
                }
                final columnPayableCalculatorResponse = snapshot.data!;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'd2487wxk' /* Download Credit Note Statement */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyText1Family,
                                  fontSize: 24.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
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
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'bprnwk22' /* Country */,
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
                                      'y9slisxx' /* Malaysia */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'oeq4iy3h' /* Thailand */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue1 = val),
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
                                    'dgwauzpr' /* -- All -- */,
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
                                    'nykvlsd9' /* Agency */,
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
                                      '82ioaqu3' /* Option 1 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '1e43cwvn' /* 2 */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue2 = val),
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
                                    'h28pcbio' /* -- All -- */,
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
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'jgodrm95' /* Month */,
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
                                      'ducyy168' /* 1 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'f2scqc5p' /* 2 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'pe2xv8fx' /* 3 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'ry7s28so' /* 4 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'mfj1m3rb' /* 5 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'x9togrjr' /* 6 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'frl9zba1' /* 7 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '6rkkkfnp' /* 8 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '766slk9b' /* 9 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '82skasyu' /* 10 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'i34u00mf' /* 11 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'nq4z77wx' /* 12 */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue3 = val),
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
                                    'dp6kc88u' /* -- All -- */,
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
                                    'a40outhh' /* Year */,
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
                                      'dx5jspl3' /* Option 1 */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'b31gvnm9' /* 2 */,
                                    )
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue4 = val),
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
                                    'ac1i5zd7' /* -- All -- */,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'xy8jxdyx' /* Close */,
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
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText1Family),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultwnj = await ITravelGroup
                                    .payableCalculatorCall
                                    .call(
                                  agencyName: _model.dropDownValue2,
                                  month: functions
                                      .parseStringToInt(_model.dropDownValue3),
                                  year: functions
                                      .parseStringToInt(_model.dropDownValue4),
                                  type: 0,
                                );
                                if ((_model.apiResultwnj?.succeeded ?? true)) {
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
                                        child: CreditnotepopupWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Something went wrong',
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
                                '3oxc70i6' /* Download */,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
