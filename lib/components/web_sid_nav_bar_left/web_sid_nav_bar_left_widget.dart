import '/components/creditnote_main/creditnote_main_widget.dart';
import '/components/creditnotestmt_main/creditnotestmt_main_widget.dart';
import '/components/debitnotestmnt_main/debitnotestmnt_main_widget.dart';
import '/components/dwnloadsalesstmnt_main/dwnloadsalesstmnt_main_widget.dart';
import '/components/logout_widget.dart';
import '/components/myaccmanager/myaccmanager_widget.dart';
import '/components/uploadreport/uploadreport_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_sid_nav_bar_left_model.dart';
export 'web_sid_nav_bar_left_model.dart';

class WebSidNavBarLeftWidget extends StatefulWidget {
  const WebSidNavBarLeftWidget({Key? key}) : super(key: key);

  @override
  _WebSidNavBarLeftWidgetState createState() => _WebSidNavBarLeftWidgetState();
}

class _WebSidNavBarLeftWidgetState extends State<WebSidNavBarLeftWidget> {
  late WebSidNavBarLeftModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebSidNavBarLeftModel());

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
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!FFAppState().sideNavVisibilty)
            Container(
              width: MediaQuery.of(context).size.width * 0.06,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).backgroundGradientDark,
                    Color(0x00FF4D4D)
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: InkWell(
                            onTap: () async {
                              setState(() {
                                FFAppState().sideNavVisibilty = true;
                              });
                            },
                            child: Container(
                              width: 36.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Icon(
                                Icons.menu,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 35.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 74.0,
                                height: 74.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://picsum.photos/seed/821/600',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'c1i5potk' /* <name> */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.settings_sharp,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 35.0, 20.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 132.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.asset(
                              'assets/images/Card_collapse.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 14.0, 10.0, 14.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '8ckhpeyr' /* Credit: */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 8.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'c9nr4fv2' /* MYR 
1,000.00 */
                                    ,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        color: FlutterFlowTheme.of(context)
                                            .creditValue,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 14.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'elf742a2' /* Outstanding: */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        fontSize: 8.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'gnk9g7bc' /* MYR 
0.00 */
                                    ,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        fontSize: 12.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.4,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().currentPage =
                                                        'Dashboard';
                                                  });

                                                  context.pushNamed(
                                                      'dashboardMain');
                                                },
                                                child: Icon(
                                                  Icons.home_outlined,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Dashboard'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Dashboard')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                        .IssuePolicyCurrentTab = 1;
                                                    FFAppState().currentPage =
                                                        'Issue Policy';
                                                  });

                                                  context.pushNamed(
                                                      'issuePolicyTravelMain');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .calendarCheck,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Issue Policy'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Issue Policy')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .sideNavVisibilty =
                                                        true;
                                                    FFAppState()
                                                            .generalAppStateJSON =
                                                        getJsonField(
                                                      functions.updateJsonElement(
                                                          FFAppState()
                                                              .generalAppStateJSON,
                                                          'QueueNavDrop',
                                                          true),
                                                      r'''$''',
                                                    );
                                                  });

                                                  context
                                                      .pushNamed('QueueMain');
                                                },
                                                child: Icon(
                                                  Icons.list,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Queue'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Queue')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().currentPage =
                                                        'Search Bookings';
                                                  });

                                                  context.pushNamed(
                                                      'SearchBookingMain');
                                                },
                                                child: Icon(
                                                  Icons.search,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Search Bookings'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Search Bookings')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (FFAppState().userRole == 'superAdmin')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.06,
                                              height: 24.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Icon(
                                                  Icons.check_circle,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Approvals'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                            if (FFAppState().currentPage ==
                                                'Approvals')
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Icon(
                                                Icons.people_sharp,
                                                color:
                                                    FFAppState().currentPage ==
                                                            'Search Bookings'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : Colors.black,
                                                size: 15.0,
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Search Bookings')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child:
                                                            MyaccmanagerWidget(),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: Icon(
                                                  Icons.settings,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Account Manager'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Account Manager')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().currentPage =
                                                        'Users';
                                                  });

                                                  context
                                                      .pushNamed('UsersMain');
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.users,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Users'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Users')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.06,
                                            height: 24.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                            .generalAppStateJSON =
                                                        getJsonField(
                                                      functions.updateJsonElement(
                                                          FFAppState()
                                                              .generalAppStateJSON,
                                                          'DownloadsNavDrop',
                                                          true),
                                                      r'''$''',
                                                    );
                                                  });
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.download,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Downloads'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : Colors.black,
                                                  size: 15.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Downloads')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (FFAppState().userRole == 'superAdmin')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.06,
                                              height: 24.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState().currentPage =
                                                          'Payable';
                                                      FFAppState()
                                                              .sideNavVisibilty =
                                                          true;
                                                      FFAppState()
                                                              .generalAppStateJSON =
                                                          getJsonField(
                                                        functions.updateJsonElement(
                                                            FFAppState()
                                                                .generalAppStateJSON,
                                                            'PayableNavDrop',
                                                            true),
                                                        r'''$''',
                                                      );
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.payments,
                                                    color: (FFAppState()
                                                                    .currentPage ==
                                                                'Payable') ||
                                                            (FFAppState()
                                                                    .currentPage ==
                                                                'Policy Statement')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : Colors.black,
                                                    size: 15.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if ((FFAppState().currentPage ==
                                                    'Payable') ||
                                                (FFAppState().currentPage ==
                                                    'Policy Statement'))
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if (FFAppState().userRole == 'superAdmin')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 30.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.06,
                                              height: 24.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .sideNavVisibilty =
                                                          true;
                                                      FFAppState()
                                                              .generalAppStateJSON =
                                                          getJsonField(
                                                        functions.updateJsonElement(
                                                            FFAppState()
                                                                .generalAppStateJSON,
                                                            'ConfigNavDrop',
                                                            true),
                                                        r'''$''',
                                                      );
                                                    });
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons.tools,
                                                    color: (FFAppState()
                                                                    .currentPage ==
                                                                'Config1') ||
                                                            (FFAppState()
                                                                    .currentPage ==
                                                                'Config2b')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : Colors.black,
                                                    size: 15.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if ((FFAppState().currentPage ==
                                                    'Config1') ||
                                                (FFAppState().currentPage ==
                                                    'Config2b'))
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if (FFAppState().userRole != 'superAdmin')
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 30.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.06,
                                                height: 24.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      setState(() {
                                                        FFAppState()
                                                                .currentPage =
                                                            'Credit Audit';
                                                      });
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child:
                                                                LogoutWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: Icon(
                                                      Icons
                                                          .featured_play_list_outlined,
                                                      color: FFAppState()
                                                                  .currentPage ==
                                                              'Credit Audit'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .identifierTextColor
                                                          : Colors.black,
                                                      size: 15.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (FFAppState().currentPage ==
                                                'Credit Audit')
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.language,
                            color: Colors.black,
                            size: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 35.0, 0.0, 0.0),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed('loginpagMain');
                              },
                              child: Icon(
                                Icons.power_settings_new_outlined,
                                color: Colors.black,
                                size: 20.0,
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
          if (FFAppState().sideNavVisibilty &&
              responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
            Container(
              width: MediaQuery.of(context).size.width * 0.19,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).backgroundGradientDark,
                    Color(0x00FF4D4D)
                  ],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 20.0, 0.0),
                          child: InkWell(
                            onTap: () async {
                              setState(() {
                                FFAppState().sideNavVisibilty = false;
                              });
                            },
                            child: Container(
                              width: 36.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 30.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.05,
                                height:
                                    MediaQuery.of(context).size.width * 0.05,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://picsum.photos/seed/821/600',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'z4b8j1t5' /* <name> */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.settings_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.asset(
                              'assets/images/Card.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 0.0, 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'g12nvyxr' /* Credit: */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  '7lmoei1j' /* <MYR 1000.0> */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .creditValue,
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    'n193qdrn' /* Outstanding: */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyText1Family,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1Family),
                                      ),
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'zzwqj3ti' /* <MYR 0.00> */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      color: FlutterFlowTheme.of(context)
                                          .identifierTextColor,
                                      fontSize: 19.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.4,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 30.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.home_outlined,
                                                color:
                                                    FFAppState().currentPage ==
                                                            'Dashboard'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : Colors.black,
                                                size: 18.0,
                                              ),
                                            ),
                                            if (FFAppState().currentPage !=
                                                'Dashboard')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        18.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    _model.updatePage(() {
                                                      FFAppState().currentPage =
                                                          'Dashboard';
                                                    });

                                                    context.pushNamed(
                                                        'dashboardMain');
                                                  },
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '49ag9u7s' /* Dashboard */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .outstandingValue,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState().currentPage ==
                                                'Dashboard')
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        22.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd1gesvnu' /* Dashboard */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .identifierTextColor,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        if (FFAppState().currentPage ==
                                            'Dashboard')
                                          Container(
                                            width: 3.0,
                                            height: 16.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .identifierTextColor,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(4.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .calendarCheck,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      FFAppState().currentPage ==
                                                              'Issue Policy'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .identifierTextColor
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .outstandingValue,
                                                      Colors.black,
                                                    ),
                                                    size: 15.0,
                                                  ),
                                                ),
                                                if (FFAppState().currentPage !=
                                                    'Issue Policy')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        FFAppState().update(() {
                                                          FFAppState()
                                                              .IssuePolicyCurrentTab = 1;
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Issue Policy';
                                                        });

                                                        context.pushNamed(
                                                            'issuePolicyEntryPage');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cj9yrmn0' /* Issue Policy */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .outstandingValue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if (FFAppState().currentPage ==
                                                    'Issue Policy')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zcymjbi6' /* Issue Policy */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (FFAppState().currentPage ==
                                                'Issue Policy')
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.list,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Queue'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .outstandingValue,
                                                  size: 15.0,
                                                ),
                                              ),
                                              if (!((FFAppState().currentPage ==
                                                      'Queue1') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue2a') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue2b') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue3') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue4')))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          22.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      setState(() {
                                                        FFAppState()
                                                                .generalAppStateJSON =
                                                            getJsonField(
                                                          functions.updateJsonElement(
                                                              FFAppState()
                                                                  .generalAppStateJSON,
                                                              'QueueNavDrop',
                                                              true),
                                                          r'''$''',
                                                        );
                                                      });

                                                      context.pushNamed(
                                                          'QueueMain');
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'unpnac9i' /* Queue */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .outstandingValue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              if ((FFAppState().currentPage == 'Queue1') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue2a') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue2b') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue3') ||
                                                  (FFAppState().currentPage ==
                                                      'Queue4'))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          22.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cveljgfw' /* Queue */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .identifierTextColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Queue')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      if (getJsonField(
                                            FFAppState().generalAppStateJSON,
                                            r'''$.QueueNavDrop''',
                                          ) ==
                                          false)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 20.0, 0.0),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .generalAppStateJSON =
                                                    getJsonField(
                                                  functions.updateJsonElement(
                                                      FFAppState()
                                                          .generalAppStateJSON,
                                                      'QueueNavDrop',
                                                      true),
                                                  r'''$''',
                                                );
                                              });
                                            },
                                            child: Icon(
                                              Icons.expand_more_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .identifierTextColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                            FFAppState().generalAppStateJSON,
                                            r'''$.QueueNavDrop''',
                                          ) ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 20.0, 0.0),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .generalAppStateJSON =
                                                    getJsonField(
                                                  functions.updateJsonElement(
                                                      FFAppState()
                                                          .generalAppStateJSON,
                                                      'QueueNavDrop',
                                                      false),
                                                  r'''$''',
                                                );
                                              });
                                            },
                                            child: Icon(
                                              Icons.expand_less,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .identifierTextColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                if (getJsonField(
                                      FFAppState().generalAppStateJSON,
                                      r'''$.QueueNavDrop''',
                                    ) ==
                                    true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  57.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (FFAppState()
                                                          .currentPage !=
                                                      'Queue1')
                                                    InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Queue1';
                                                        });

                                                        context.pushNamed(
                                                            'QueueMain');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gq4n50s2' /* Today (0) */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .currentPage ==
                                                      'Queue1')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zmrnp2e0' /* Today (0) */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                fontSize: 12.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (!((FFAppState()
                                                                .currentPage ==
                                                            'Queue2a') ||
                                                        (FFAppState()
                                                                .currentPage ==
                                                            'Queue2b')))
                                                      InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .generalAppStateJSON =
                                                                getJsonField(
                                                              functions.updateJsonElement(
                                                                  FFAppState()
                                                                      .generalAppStateJSON,
                                                                  'QueueNavAllDrop',
                                                                  true),
                                                              r'''$''',
                                                            );
                                                          });
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8ty2u68u' /* All (4) */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    if ((FFAppState()
                                                                .currentPage ==
                                                            'Queue2a') ||
                                                        (FFAppState()
                                                                .currentPage ==
                                                            'Queue2b'))
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r2k96li5' /* All (4) */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .identifierTextColor,
                                                                  fontSize:
                                                                      12.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    if (getJsonField(
                                                          FFAppState()
                                                              .generalAppStateJSON,
                                                          r'''$.QueueNavAllDrop''',
                                                        ) ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .generalAppStateJSON =
                                                                  getJsonField(
                                                                functions.updateJsonElement(
                                                                    FFAppState()
                                                                        .generalAppStateJSON,
                                                                    'QueueNavAllDrop',
                                                                    true),
                                                                r'''$''',
                                                              );
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .expand_more_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .identifierTextColor,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (getJsonField(
                                                          FFAppState()
                                                              .generalAppStateJSON,
                                                          r'''$.QueueNavAllDrop''',
                                                        ) ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .generalAppStateJSON =
                                                                  getJsonField(
                                                                functions.updateJsonElement(
                                                                    FFAppState()
                                                                        .generalAppStateJSON,
                                                                    'QueueNavAllDrop',
                                                                    false),
                                                                r'''$''',
                                                              );
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .expand_less_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .identifierTextColor,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              if (getJsonField(
                                                    FFAppState()
                                                        .generalAppStateJSON,
                                                    r'''$.QueueNavAllDrop''',
                                                  ) ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          35.0, 10.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (FFAppState()
                                                                  .currentPage !=
                                                              'Queue2a')
                                                            InkWell(
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .currentPage =
                                                                      'Queue2a';
                                                                });

                                                                context.pushNamed(
                                                                    'QueueMain');
                                                              },
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'uv945ch6' /* Confirmed (4) */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family,
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyText1Family),
                                                                    ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .currentPage ==
                                                              'Queue2a')
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'hwjppypr' /* Confirmed (4) */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .identifierTextColor,
                                                                    fontSize:
                                                                        12.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyText1Family),
                                                                  ),
                                                            ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          if (FFAppState()
                                                                  .currentPage !=
                                                              'Queue2b')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .currentPage =
                                                                        'Queue2b';
                                                                  });

                                                                  context.pushNamed(
                                                                      'QueueMain');
                                                                },
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'bql6qn11' /* Cancelled (0) */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyText1Family,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .currentPage ==
                                                              'Queue2b')
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '8o5kw1e4' /* Cancelled (0) */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .identifierTextColor,
                                                                      fontSize:
                                                                          12.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyText1Family),
                                                                    ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (FFAppState()
                                                            .currentPage !=
                                                        'Queue3')
                                                      InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .currentPage =
                                                                'Queue3';
                                                          });

                                                          context.pushNamed(
                                                              'QueueMain');
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'x83dkbmf' /* Previous Month Cancellations (... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .currentPage ==
                                                        'Queue3')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4zg9kng4' /* Previous Month Cancellations (... */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .identifierTextColor,
                                                                  fontSize:
                                                                      12.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (FFAppState()
                                                            .currentPage !=
                                                        'Queue4')
                                                      InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .currentPage =
                                                                'Queue4';
                                                          });

                                                          context.pushNamed(
                                                              'QueueMain');
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '37bkq7hr' /* Saved Quotations (1) */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .currentPage ==
                                                        'Queue4')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q61rq4ci' /* Saved Quotations (1) */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .identifierTextColor,
                                                                  fontSize:
                                                                      12.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'jxbvbjmm' /* Refresh */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Icon(
                                                        Icons.refresh,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .identifierTextColor,
                                                        size: 16.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.search,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Search Bookings'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .outstandingValue,
                                                  size: 15.0,
                                                ),
                                              ),
                                              if (FFAppState().currentPage !=
                                                  'Search Bookings')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          22.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      setState(() {
                                                        FFAppState()
                                                                .currentPage =
                                                            'Search Bookings';
                                                      });

                                                      context.pushNamed(
                                                          'SearchBookingMain');
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5xa3vwc1' /* Search Bookings */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .outstandingValue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              if (FFAppState().currentPage ==
                                                  'Search Bookings')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          22.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v74gh7ps' /* Search Bookings */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .identifierTextColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Search Bookings')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                if (FFAppState().userRole == 'superAdmin')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Icon(
                                                      Icons.check_circle,
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState().currentPage ==
                                                                'Approvals'
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .identifierTextColor
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .outstandingValue,
                                                        Colors.black,
                                                      ),
                                                      size: 15.0,
                                                    ),
                                                  ),
                                                  if (FFAppState()
                                                          .currentPage !=
                                                      'Approvals')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  22.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .currentPage =
                                                                'Approvals';
                                                          });

                                                          context.pushNamed(
                                                              'ApprovalMain');
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kqqcw081' /* Approvals */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .outstandingValue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .currentPage ==
                                                      'Approvals')
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  22.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'juih4nfa' /* Approvals */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .identifierTextColor,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                              if (FFAppState().currentPage ==
                                                  'Issue Policy')
                                                Container(
                                                  width: 3.0,
                                                  height: 16.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .identifierTextColor,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(4.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (FFAppState().userRole == 'superAdmin')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.people_rounded,
                                                    color: FFAppState()
                                                                .currentPage ==
                                                            'Users'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .outstandingValue,
                                                    size: 15.0,
                                                  ),
                                                ),
                                                if (FFAppState().currentPage !=
                                                    'Entities')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Entities';
                                                        });

                                                        context.pushNamed(
                                                            'AgenciesMain');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v24o63j4' /* Entities */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .outstandingValue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if (FFAppState().currentPage ==
                                                    'Entities')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ceha28jj' /* Entities */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (FFAppState().currentPage ==
                                                'Entities')
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                if (FFAppState().userRole != 'superAdmin')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.settings,
                                                    color: FFAppState()
                                                                .currentPage ==
                                                            'Account Manager'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .outstandingValue,
                                                    size: 15.0,
                                                  ),
                                                ),
                                                if (FFAppState().currentPage !=
                                                    'Account Manager')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return Padding(
                                                              padding: MediaQuery
                                                                      .of(context)
                                                                  .viewInsets,
                                                              child:
                                                                  MyaccmanagerWidget(),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x5tof12j' /* Account Manager */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .outstandingValue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if (FFAppState().currentPage ==
                                                    'Account Manager')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        't4dw8oa8' /* Account Manager */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (FFAppState().currentPage ==
                                                'Account Manager')
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                if ((FFAppState().userRole == 'admin') ||
                                    (FFAppState().userRole == 'superAdmin'))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.users,
                                                    color: FFAppState()
                                                                .currentPage ==
                                                            'Users'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .outstandingValue,
                                                    size: 14.0,
                                                  ),
                                                ),
                                                if ((FFAppState().currentPage !=
                                                        'Users') &&
                                                    (FFAppState().currentPage !=
                                                        'Users2'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .generalAppStateJSON =
                                                              getJsonField(
                                                            functions.updateJsonElement(
                                                                FFAppState()
                                                                    .generalAppStateJSON,
                                                                'UsersNavDrop',
                                                                true),
                                                            r'''$''',
                                                          );
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Users';
                                                        });

                                                        context.pushNamed(
                                                            'UsersMain');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5bjlgh4o' /* Users */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .outstandingValue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if ((FFAppState().currentPage ==
                                                        'Users') ||
                                                    (FFAppState().currentPage ==
                                                        'Users2'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1ul755tz' /* Users */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (FFAppState().currentPage ==
                                                'Users')
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        if (getJsonField(
                                              FFAppState().generalAppStateJSON,
                                              r'''$.UsersNavDrop''',
                                            ) ==
                                            false)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState()
                                                          .generalAppStateJSON =
                                                      getJsonField(
                                                    functions.updateJsonElement(
                                                        FFAppState()
                                                            .generalAppStateJSON,
                                                        'UsersNavDrop',
                                                        true),
                                                    r'''$''',
                                                  );
                                                });
                                              },
                                              child: Icon(
                                                Icons.expand_more_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                        if (getJsonField(
                                              FFAppState().generalAppStateJSON,
                                              r'''$.UsersNavDrop''',
                                            ) ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState()
                                                          .generalAppStateJSON =
                                                      getJsonField(
                                                    functions.updateJsonElement(
                                                        FFAppState()
                                                            .generalAppStateJSON,
                                                        'UsersNavDrop',
                                                        false),
                                                    r'''$''',
                                                  );
                                                });
                                              },
                                              child: Icon(
                                                Icons.expand_less,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                if (getJsonField(
                                      FFAppState().generalAppStateJSON,
                                      r'''$.UsersNavDrop''',
                                    ) ==
                                    true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  57.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (FFAppState()
                                                          .currentPage !=
                                                      'Users')
                                                    InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .generalAppStateJSON =
                                                              getJsonField(
                                                            functions.updateJsonElement(
                                                                FFAppState()
                                                                    .generalAppStateJSON,
                                                                'UsersNavDrop',
                                                                true),
                                                            r'''$''',
                                                          );
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Users';
                                                        });

                                                        context.pushNamed(
                                                            'UsersMain');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'reptv06n' /* All Users */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .currentPage ==
                                                      'Users')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'cp0g55kw' /* All Users */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                fontSize: 12.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (FFAppState()
                                                            .currentPage !=
                                                        'Users2')
                                                      InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .currentPage =
                                                                'Users2';
                                                          });

                                                          context.pushNamed(
                                                              'UsersMain');
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fh7d0200' /* Create User */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .currentPage ==
                                                        'Users2')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8zbr0doi' /* Create User */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .identifierTextColor,
                                                                  fontSize:
                                                                      12.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.download,
                                                  color: FFAppState()
                                                              .currentPage ==
                                                          'Downloads'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .identifierTextColor
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .outstandingValue,
                                                  size: 15.0,
                                                ),
                                              ),
                                              if (FFAppState().currentPage !=
                                                  'Downloads')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          22.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      setState(() {
                                                        FFAppState()
                                                                .generalAppStateJSON =
                                                            getJsonField(
                                                          functions.updateJsonElement(
                                                              FFAppState()
                                                                  .generalAppStateJSON,
                                                              'DownloadsNavDrop',
                                                              true),
                                                          r'''$''',
                                                        );
                                                      });
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '5iz51xmm' /* Downloads */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .outstandingValue,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              if (FFAppState().currentPage ==
                                                  'Downloads')
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          22.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iwjwzajs' /* Downloads */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .identifierTextColor,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          if (FFAppState().currentPage ==
                                              'Downloads')
                                            Container(
                                              width: 3.0,
                                              height: 16.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(4.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      if (getJsonField(
                                            FFAppState().generalAppStateJSON,
                                            r'''$.DownloadsNavDrop''',
                                          ) ==
                                          false)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 20.0, 0.0),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .generalAppStateJSON =
                                                    getJsonField(
                                                  functions.updateJsonElement(
                                                      FFAppState()
                                                          .generalAppStateJSON,
                                                      'DownloadsNavDrop',
                                                      true),
                                                  r'''$''',
                                                );
                                              });
                                            },
                                            child: Icon(
                                              Icons.expand_more_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .identifierTextColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                      if (getJsonField(
                                            FFAppState().generalAppStateJSON,
                                            r'''$.DownloadsNavDrop''',
                                          ) ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 20.0, 0.0),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .generalAppStateJSON =
                                                    getJsonField(
                                                  functions.updateJsonElement(
                                                      FFAppState()
                                                          .generalAppStateJSON,
                                                      'DownloadsNavDrop',
                                                      false),
                                                  r'''$''',
                                                );
                                              });
                                            },
                                            child: Icon(
                                              Icons.expand_less,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .identifierTextColor,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                if (getJsonField(
                                      FFAppState().generalAppStateJSON,
                                      r'''$.DownloadsNavDrop''',
                                    ) ==
                                    true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  57.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery.of(
                                                                context)
                                                            .viewInsets,
                                                        child:
                                                            DwnloadsalesstmntMainWidget(),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pwupndqo' /* Sales Statement */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                ),
                                              ),
                                              if (FFAppState().userRole ==
                                                  'superAdmin')
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                                child:
                                                                    CreditnotestmtMainWidget(),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'q8ceuljj' /* Credit Note Statement */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                                child:
                                                                    DebitnotestmntMainWidget(),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gt0zkjbl' /* Debit Note / Tax Invoice */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                                child:
                                                                    CreditnoteMainWidget(),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'b2nmhe3d' /* Credit Note */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wowwvjt9' /* Payable Aging */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xbw1ggox' /* Agency Summary */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vc9gvq0z' /* User Email */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'x4gvvmk9' /* Group Travel Template */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if ((FFAppState().userRole == 'admin') ||
                                    (FFAppState().userRole == 'agent'))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .featured_play_list_outlined,
                                                    color: FFAppState()
                                                                .currentPage ==
                                                            'Credit Audit'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .outstandingValue,
                                                    size: 15.0,
                                                  ),
                                                ),
                                                if (FFAppState().currentPage !=
                                                    'Credit Audit')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Credit Audit';
                                                        });
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'obu7mn7l' /* Credit Audit */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .outstandingValue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if (FFAppState().currentPage ==
                                                    'Credit Audit')
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '2ys78zp2' /* Credit Audit */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if (FFAppState().currentPage ==
                                                'Credit Audit')
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                if (FFAppState().userRole == 'superAdmin')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons.payments,
                                                    color: (FFAppState()
                                                                    .currentPage ==
                                                                'Payable') ||
                                                            (FFAppState()
                                                                    .currentPage ==
                                                                'Policy Statement')
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .identifierTextColor
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .outstandingValue,
                                                    size: 14.0,
                                                  ),
                                                ),
                                                if (!((FFAppState()
                                                            .currentPage ==
                                                        'Payable') ||
                                                    (FFAppState().currentPage ==
                                                        'Policy Statement')))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .generalAppStateJSON =
                                                              getJsonField(
                                                            functions.updateJsonElement(
                                                                FFAppState()
                                                                    .generalAppStateJSON,
                                                                'PayableNavDrop',
                                                                true),
                                                            r'''$''',
                                                          );
                                                        });
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jlb6g0nw' /* Payable */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .outstandingValue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if ((FFAppState().currentPage ==
                                                        'Payable') ||
                                                    (FFAppState().currentPage ==
                                                        'Policy Statement'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'cw1pfm7g' /* Payable */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if ((FFAppState().currentPage ==
                                                    'Payable') ||
                                                (FFAppState().currentPage ==
                                                    'Policy Statement'))
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        if (getJsonField(
                                              FFAppState().generalAppStateJSON,
                                              r'''$.PayableNavDrop''',
                                            ) ==
                                            false)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState()
                                                          .generalAppStateJSON =
                                                      getJsonField(
                                                    functions.updateJsonElement(
                                                        FFAppState()
                                                            .generalAppStateJSON,
                                                        'PayableNavDrop',
                                                        true),
                                                    r'''$''',
                                                  );
                                                });
                                              },
                                              child: Icon(
                                                Icons.expand_more_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                        if (getJsonField(
                                              FFAppState().generalAppStateJSON,
                                              r'''$.PayableNavDrop''',
                                            ) ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState()
                                                          .generalAppStateJSON =
                                                      getJsonField(
                                                    functions.updateJsonElement(
                                                        FFAppState()
                                                            .generalAppStateJSON,
                                                        'PayableNavDrop',
                                                        false),
                                                    r'''$''',
                                                  );
                                                });
                                              },
                                              child: Icon(
                                                Icons.expand_less,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                if (getJsonField(
                                      FFAppState().generalAppStateJSON,
                                      r'''$.PayableNavDrop''',
                                    ) ==
                                    true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  57.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (FFAppState()
                                                          .currentPage !=
                                                      'Payable')
                                                    InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Payable';
                                                        });

                                                        context.pushNamed(
                                                            'payableMain');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a616abnt' /* Payable */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .currentPage ==
                                                      'Payable')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        't1m3gjcm' /* Payable */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                fontSize: 12.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (FFAppState()
                                                            .currentPage !=
                                                        'Policy Statement')
                                                      InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .currentPage =
                                                                'Policy Statement';
                                                          });

                                                          context.pushNamed(
                                                              'policystmentMain');
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '59sgiw7k' /* Policy Statement */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .currentPage ==
                                                        'Policy Statement')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x3ba38am' /* Policy Statement */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .identifierTextColor,
                                                                  fontSize:
                                                                      12.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (FFAppState().userRole == 'superAdmin')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.tools,
                                                    color: () {
                                                      if (FFAppState()
                                                              .currentPage ==
                                                          'Config1') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .identifierTextColor;
                                                      } else if (FFAppState()
                                                              .currentPage ==
                                                          'Config2b') {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .identifierTextColor;
                                                      } else {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .outstandingValue;
                                                      }
                                                    }(),
                                                    size: 14.0,
                                                  ),
                                                ),
                                                if (!((FFAppState()
                                                            .currentPage ==
                                                        'Config1') ||
                                                    (FFAppState().currentPage ==
                                                        'Config2b')))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .generalAppStateJSON =
                                                              getJsonField(
                                                            functions.updateJsonElement(
                                                                FFAppState()
                                                                    .generalAppStateJSON,
                                                                'ConfigNavDrop',
                                                                true),
                                                            r'''$''',
                                                          );
                                                        });
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zj60hhek' /* Configuration */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .outstandingValue,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if ((FFAppState().currentPage ==
                                                        'Config1') ||
                                                    (FFAppState().currentPage ==
                                                        'Config2b'))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '3ipb7f1f' /* Configuration */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                            if ((FFAppState().currentPage ==
                                                    'Config1') ||
                                                (FFAppState().currentPage ==
                                                    'Config2b'))
                                              Container(
                                                width: 3.0,
                                                height: 16.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(4.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(4.0),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        if (getJsonField(
                                              FFAppState().generalAppStateJSON,
                                              r'''$.ConfigNavDrop''',
                                            ) ==
                                            false)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState()
                                                          .generalAppStateJSON =
                                                      getJsonField(
                                                    functions.updateJsonElement(
                                                        FFAppState()
                                                            .generalAppStateJSON,
                                                        'ConfigNavDrop',
                                                        true),
                                                    r'''$''',
                                                  );
                                                });
                                              },
                                              child: Icon(
                                                Icons.expand_more_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                        if (getJsonField(
                                              FFAppState().generalAppStateJSON,
                                              r'''$.ConfigNavDrop''',
                                            ) ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 20.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState()
                                                          .generalAppStateJSON =
                                                      getJsonField(
                                                    functions.updateJsonElement(
                                                        FFAppState()
                                                            .generalAppStateJSON,
                                                        'ConfigNavDrop',
                                                        false),
                                                    r'''$''',
                                                  );
                                                });
                                              },
                                              child: Icon(
                                                Icons.expand_less,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                if (getJsonField(
                                      FFAppState().generalAppStateJSON,
                                      r'''$.ConfigNavDrop''',
                                    ) ==
                                    true)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  57.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (FFAppState()
                                                          .currentPage !=
                                                      'Config1')
                                                    InkWell(
                                                      onTap: () async {
                                                        setState(() {
                                                          FFAppState()
                                                                  .currentPage =
                                                              'Config1';
                                                        });

                                                        context.pushNamed(
                                                            'EmailConfigMain');
                                                      },
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kns49ufb' /* Email Receiver */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    ),
                                                  if (FFAppState()
                                                          .currentPage ==
                                                      'Config1')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ebdodr9x' /* Email Receiver */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .identifierTextColor,
                                                                fontSize: 12.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (FFAppState()
                                                            .currentPage !=
                                                        'Config2b')
                                                      InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                    .generalAppStateJSON =
                                                                getJsonField(
                                                              functions.updateJsonElement(
                                                                  FFAppState()
                                                                      .generalAppStateJSON,
                                                                  'ConfigNavReportDrop',
                                                                  true),
                                                              r'''$''',
                                                            );
                                                          });
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '81dj2oec' /* Report */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                    if (FFAppState()
                                                            .currentPage ==
                                                        'Config2b')
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vcldyg4t' /* Report */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .identifierTextColor,
                                                                  fontSize:
                                                                      12.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family),
                                                                ),
                                                      ),
                                                    if (getJsonField(
                                                          FFAppState()
                                                              .generalAppStateJSON,
                                                          r'''$.ConfigNavReportDrop''',
                                                        ) ==
                                                        false)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .generalAppStateJSON =
                                                                  getJsonField(
                                                                functions.updateJsonElement(
                                                                    FFAppState()
                                                                        .generalAppStateJSON,
                                                                    'ConfigNavReportDrop',
                                                                    true),
                                                                r'''$''',
                                                              );
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .expand_more_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .identifierTextColor,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (getJsonField(
                                                          FFAppState()
                                                              .generalAppStateJSON,
                                                          r'''$.QueueNavAllDrop''',
                                                        ) ==
                                                        true)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                      .generalAppStateJSON =
                                                                  getJsonField(
                                                                functions.updateJsonElement(
                                                                    FFAppState()
                                                                        .generalAppStateJSON,
                                                                    'QueueNavAllDrop',
                                                                    false),
                                                                r'''$''',
                                                              );
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .expand_less_sharp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .identifierTextColor,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              if (getJsonField(
                                                    FFAppState()
                                                        .generalAppStateJSON,
                                                    r'''$.ConfigNavReportDrop''',
                                                  ) ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          35.0, 10.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            enableDrag: false,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                                child:
                                                                    UploadreportWidget(),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '60xlbs6p' /* Upload */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    10.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (FFAppState()
                                                                    .currentPage !=
                                                                'Config2b')
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .currentPage =
                                                                        'Config2b';
                                                                  });

                                                                  context.pushNamed(
                                                                      'ConfigSearchAndDeleteMain');
                                                                },
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    's7tlrgou' /* Search / Delete */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyText1Family,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyText1Family),
                                                                      ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .currentPage ==
                                                                'Config2b')
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '1mwfnow3' /* Search / Delete */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1Family,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .identifierTextColor,
                                                                      fontSize:
                                                                          12.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyText1Family),
                                                                    ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                            ],
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 60.0, 30.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '2u3uyssl' /* English */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyText1Family,
                                      fontSize: 13.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1Family),
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 1.0, 0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.language,
                                  color: Colors.black,
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: LogoutWidget(),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      's7mlntaw' /* Logout */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('loginpagMain');
                                },
                                child: Icon(
                                  Icons.power_settings_new_outlined,
                                  color: Colors.black,
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
