import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'test_model.dart';
export 'test_model.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  late TestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  _model.getDiscoverplan =
                      await ITravelGroup.discoverPlanListCall.call(
                    planType: 'TPT B2B Domestic',
                    languageCode: 'En',
                  );
                  if ((_model.getDiscoverplan?.succeeded ?? true)) {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('SuccessResponse'),
                          content: Text(ITravelGroup.discoverPlanListCall
                              .planType(
                                (_model.getDiscoverplan?.jsonBody ?? ''),
                              )
                              .toString()),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Something went wrong',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
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
                  '7o49qp35' /* Button */,
                ),
                options: FFButtonOptions(
                  width: 130.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).subtitle2Family,
                        color: Colors.white,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).subtitle2Family),
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              if ((_model.getDiscoverplan?.succeeded ?? true))
                Builder(
                  builder: (context) {
                    final nameslist = ITravelGroup.discoverPlanListCall
                            .attributes(
                              (_model.getDiscoverplan?.jsonBody ?? ''),
                            )
                            ?.toList() ??
                        [];
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: nameslist.length,
                      itemBuilder: (context, nameslistIndex) {
                        final nameslistItem = nameslist[nameslistIndex];
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              getJsonField(
                                nameslistItem,
                                r'''$.name''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Text(
                              getJsonField(
                                nameslistItem,
                                r'''$.description''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
