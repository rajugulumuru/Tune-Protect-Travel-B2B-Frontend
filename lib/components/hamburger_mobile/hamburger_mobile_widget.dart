import '/components/myaccmanager/myaccmanager_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hamburger_mobile_model.dart';
export 'hamburger_mobile_model.dart';

class HamburgerMobileWidget extends StatefulWidget {
  const HamburgerMobileWidget({Key? key}) : super(key: key);

  @override
  _HamburgerMobileWidgetState createState() => _HamburgerMobileWidgetState();
}

class _HamburgerMobileWidgetState extends State<HamburgerMobileWidget> {
  late HamburgerMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HamburgerMobileModel());

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
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/Rectangle_17978.png',
          ).image,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 0.0),
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
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: InkWell(
                        onTap: () async {
                          if (Scaffold.of(context).isDrawerOpen ||
                              Scaffold.of(context).isEndDrawerOpen) {
                            Navigator.pop(context);
                          }
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 30.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 96.0,
                        height: 96.0,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'rrfs5s1q' /* <name> */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
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
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
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
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 132.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: Image.asset(
                      'assets/images/Card.png',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 20.0),
                  child: Wrap(
                    spacing: 300.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          'rhp7ed9r' /* Credit: */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          '3pr1vvxs' /* <MYR 1000.0> */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: FlutterFlowTheme.of(context).creditValue,
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: AutoSizeText(
                          FFLocalizations.of(context).getText(
                            'nnf6efj0' /* Outstanding: */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyText1Family,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyText1Family),
                              ),
                        ),
                      ),
                      AutoSizeText(
                        FFLocalizations.of(context).getText(
                          '12h7z668' /* <MYR 0.00> */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: FlutterFlowTheme.of(context)
                                  .identifierTextColor,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 0.0),
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.home_outlined,
                                        color: FFAppState().currentPage ==
                                                'Dashboard'
                                            ? FlutterFlowTheme.of(context)
                                                .identifierTextColor
                                            : Colors.black,
                                        size: 18.0,
                                      ),
                                    ),
                                    if (FFAppState().currentPage != 'Dashboard')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            _model.updatePage(() {
                                              FFAppState().currentPage =
                                                  'Dashboard';
                                            });

                                            context.pushNamed('dashboardMain');
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'sdueq5m6' /* Dashboard */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .outstandingValue,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.normal,
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
                                    if (FFAppState().currentPage == 'Dashboard')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            22.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '3cpejmbz' /* Dashboard */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .identifierTextColor,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
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
                                if (FFAppState().currentPage == 'Dashboard')
                                  Container(
                                    width: 3.0,
                                    height: 16.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .identifierTextColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(4.0),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Stack(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.calendarCheck,
                                            color: valueOrDefault<Color>(
                                              FFAppState().currentPage ==
                                                      'Issue Policy'
                                                  ? FlutterFlowTheme.of(context)
                                                      .identifierTextColor
                                                  : FlutterFlowTheme.of(context)
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
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                FFAppState().update(() {
                                                  FFAppState()
                                                      .IssuePolicyCurrentTab = 1;
                                                  FFAppState().currentPage =
                                                      'Issue Policy';
                                                });

                                                context.pushNamed(
                                                    'issuePolicyEntryPage');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'u7skx95u' /* Issue Policy */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .outstandingValue,
                                                          fontSize: 12.0,
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
                                            'Issue Policy')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xezb3pze' /* Issue Policy */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1Family,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .identifierTextColor,
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
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
                                        'Issue Policy')
                                      Container(
                                        width: 3.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .identifierTextColor,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(4.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(4.0),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.list,
                                          color: FFAppState().currentPage ==
                                                  'Queue'
                                              ? FlutterFlowTheme.of(context)
                                                  .identifierTextColor
                                              : FlutterFlowTheme.of(context)
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fgng9sup' /* Queue */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .outstandingValue,
                                                        fontSize: 12.0,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ad9h9azz' /* Queue */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .identifierTextColor,
                                                  fontWeight: FontWeight.bold,
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
                                  if (FFAppState().currentPage == 'Queue')
                                    Container(
                                      width: 3.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .identifierTextColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(4.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(4.0),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        FFAppState().generalAppStateJSON =
                                            getJsonField(
                                          functions.updateJsonElement(
                                              FFAppState().generalAppStateJSON,
                                              'QueueNavDrop',
                                              true),
                                          r'''$''',
                                        );
                                      });
                                    },
                                    child: Icon(
                                      Icons.expand_more_sharp,
                                      color: FlutterFlowTheme.of(context)
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        FFAppState().generalAppStateJSON =
                                            getJsonField(
                                          functions.updateJsonElement(
                                              FFAppState().generalAppStateJSON,
                                              'QueueNavDrop',
                                              false),
                                          r'''$''',
                                        );
                                      });
                                    },
                                    child: Icon(
                                      Icons.expand_less,
                                      color: FlutterFlowTheme.of(context)
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      57.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState().currentPage !=
                                              'Queue1')
                                            InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().currentPage =
                                                      'Queue1';
                                                });

                                                context.pushNamed('QueueMain');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ohk64oow' /* Today (0) */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                          if (FFAppState().currentPage ==
                                              'Queue1')
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'a8ktk699' /* Today (0) */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText1Family,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .identifierTextColor,
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family),
                                                  ),
                                            ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (!((FFAppState().currentPage ==
                                                    'Queue2a') ||
                                                (FFAppState().currentPage ==
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
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '39amo6vp' /* All (4) */,
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
                                            if ((FFAppState().currentPage ==
                                                    'Queue2a') ||
                                                (FFAppState().currentPage ==
                                                    'Queue2b'))
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ywxpe68b' /* All (4) */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .identifierTextColor,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
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
                                                    Icons.expand_more_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
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
                                                    Icons.expand_less_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                            r'''$.QueueNavAllDrop''',
                                          ) ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  35.0, 10.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
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
                                                          'ko93u5cp' /* Confirmed (4) */,
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
                                                      'Queue2a')
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'a6y3xyyb' /* Confirmed (4) */,
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
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyText1Family),
                                                              ),
                                                    ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
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
                                                        onTap: () async {
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
                                                            'wwk2gp9m' /* Cancelled (0) */,
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
                                                          'o49a9ep8' /* Cancelled (0) */,
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
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
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
                                            ],
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().currentPage !=
                                                'Queue3')
                                              InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().currentPage =
                                                        'Queue3';
                                                  });

                                                  context
                                                      .pushNamed('QueueMain');
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'u6sodfex' /* Previous Month Cancellations (... */,
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
                                            if (FFAppState().currentPage ==
                                                'Queue3')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'wj2g5i0j' /* Previous Month Cancellations (... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .identifierTextColor,
                                                          fontSize: 12.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().currentPage !=
                                                'Queue4')
                                              InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().currentPage =
                                                        'Queue4';
                                                  });

                                                  context
                                                      .pushNamed('QueueMain');
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'suu3rw4w' /* Saved Quotations (1) */,
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
                                            if (FFAppState().currentPage ==
                                                'Queue4')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9613meiu' /* Saved Quotations (1) */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .identifierTextColor,
                                                          fontSize: 12.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1Family),
                                                        ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xu1246rm' /* Refresh */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Icon(
                                                Icons.refresh,
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.search,
                                          color: FFAppState().currentPage ==
                                                  'Search Bookings'
                                              ? FlutterFlowTheme.of(context)
                                                  .identifierTextColor
                                              : FlutterFlowTheme.of(context)
                                                  .outstandingValue,
                                          size: 15.0,
                                        ),
                                      ),
                                      if (FFAppState().currentPage !=
                                          'Search Bookings')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            onTap: () async {
                                              setState(() {
                                                FFAppState().currentPage =
                                                    'Search Bookings';
                                              });

                                              context.pushNamed(
                                                  'SearchBookingMain');
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'uhdsul47' /* Search Bookings */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          'Search Bookings')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '2067z3pl' /* Search Bookings */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                        color: FlutterFlowTheme.of(context)
                                            .identifierTextColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(4.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(4.0),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Stack(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.check_circle,
                                              color: valueOrDefault<Color>(
                                                FFAppState().currentPage ==
                                                        'Approvals'
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
                                              'Approvals')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      22.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                onTap: () async {
                                                  FFAppState().update(() {
                                                    FFAppState().currentPage =
                                                        'Approvals';
                                                  });

                                                  context.pushNamed(
                                                      'ApprovalMain');
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k6tvd7lr' /* Approvals */,
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
                                              'Approvals')
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      22.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'dot1xbm6' /* Approvals */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                          'Issue Policy')
                                        Container(
                                          width: 3.0,
                                          height: 16.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .identifierTextColor,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(4.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(4.0),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.people_rounded,
                                            color: FFAppState().currentPage ==
                                                    'Users'
                                                ? FlutterFlowTheme.of(context)
                                                    .identifierTextColor
                                                : FlutterFlowTheme.of(context)
                                                    .outstandingValue,
                                            size: 15.0,
                                          ),
                                        ),
                                        if (FFAppState().currentPage !=
                                            'Entities')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().currentPage =
                                                      'Entities';
                                                });

                                                context
                                                    .pushNamed('AgenciesMain');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ihtk7dbd' /* Entities */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                            'Entities')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hdb307qt' /* Entities */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                    if (FFAppState().currentPage == 'Entities')
                                      Container(
                                        width: 3.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .identifierTextColor,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(4.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(4.0),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
                                            .identifierTextColor,
                                        size: 20.0,
                                      ),
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
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.settings,
                                          color: FFAppState().currentPage ==
                                                  'Account Manager'
                                              ? FlutterFlowTheme.of(context)
                                                  .identifierTextColor
                                              : FlutterFlowTheme.of(context)
                                                  .outstandingValue,
                                          size: 15.0,
                                        ),
                                      ),
                                      if (FFAppState().currentPage !=
                                          'Account Manager')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 0.0),
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
                                                    padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                    child: MyaccmanagerWidget(),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'cny51l69' /* Account Manager */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          'Account Manager')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'm0gg4avz' /* Account Manager */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                      'Account Manager')
                                    Container(
                                      width: 3.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .identifierTextColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(4.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(4.0),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.users,
                                            color: FFAppState().currentPage ==
                                                    'Users'
                                                ? FlutterFlowTheme.of(context)
                                                    .identifierTextColor
                                                : FlutterFlowTheme.of(context)
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
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                        'UsersNavDrop',
                                                        true),
                                                    r'''$''',
                                                  );
                                                  FFAppState().currentPage =
                                                      'Users';
                                                });

                                                context.pushNamed('UsersMain');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0zb3pmt0' /* Users */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                        if ((FFAppState().currentPage ==
                                                'Users') ||
                                            (FFAppState().currentPage ==
                                                'Users2'))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qvvoj0zu' /* Users */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                    if (FFAppState().currentPage == 'Users')
                                      Container(
                                        width: 3.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .identifierTextColor,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(4.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(4.0),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      57.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (FFAppState().currentPage !=
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
                                                  FFAppState().currentPage =
                                                      'Users';
                                                });

                                                context.pushNamed('UsersMain');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'lh0ury6c' /* All Users */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                          if (FFAppState().currentPage ==
                                              'Users')
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '564kg2zi' /* All Users */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .identifierTextColor,
                                                        fontSize: 12.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1Family),
                                                      ),
                                            ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().currentPage !=
                                                'Users2')
                                              InkWell(
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState().currentPage =
                                                        'Users2';
                                                  });

                                                  context
                                                      .pushNamed('UsersMain');
                                                },
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'vxvqnwh8' /* Create User */,
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
                                            if (FFAppState().currentPage ==
                                                'Users2')
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'skv3nib6' /* Create User */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1Family,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .identifierTextColor,
                                                          fontSize: 12.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.download,
                                          color: FFAppState().currentPage ==
                                                  'Downloads'
                                              ? FlutterFlowTheme.of(context)
                                                  .identifierTextColor
                                              : FlutterFlowTheme.of(context)
                                                  .outstandingValue,
                                          size: 15.0,
                                        ),
                                      ),
                                      if (FFAppState().currentPage !=
                                          'Downloads')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '0kxm92l2' /* Downloads */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          'Downloads')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'at00j1z3' /* Downloads */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyText1Family,
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                  if (FFAppState().currentPage == 'Downloads')
                                    Container(
                                      width: 3.0,
                                      height: 16.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .identifierTextColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(4.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(4.0),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        FFAppState().generalAppStateJSON =
                                            getJsonField(
                                          functions.updateJsonElement(
                                              FFAppState().generalAppStateJSON,
                                              'DownloadsNavDrop',
                                              true),
                                          r'''$''',
                                        );
                                      });
                                    },
                                    child: Icon(
                                      Icons.expand_more_sharp,
                                      color: FlutterFlowTheme.of(context)
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: InkWell(
                                    onTap: () async {
                                      setState(() {
                                        FFAppState().generalAppStateJSON =
                                            getJsonField(
                                          functions.updateJsonElement(
                                              FFAppState().generalAppStateJSON,
                                              'DownloadsNavDrop',
                                              false),
                                          r'''$''',
                                        );
                                      });
                                    },
                                    child: Icon(
                                      Icons.expand_less,
                                      color: FlutterFlowTheme.of(context)
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      57.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'vzwsg2wf' /* Sales Statement */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1Family,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1Family),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'w9znfxgl' /* Group Travel Template */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
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
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.featured_play_list_outlined,
                                            color: FFAppState().currentPage ==
                                                    'Credit Audit'
                                                ? FlutterFlowTheme.of(context)
                                                    .identifierTextColor
                                                : FlutterFlowTheme.of(context)
                                                    .outstandingValue,
                                            size: 15.0,
                                          ),
                                        ),
                                        if (FFAppState().currentPage !=
                                            'Credit Audit')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().currentPage =
                                                      'Credit Audit';
                                                });
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8739gtvf' /* Credit Audit */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                            'Credit Audit')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5q1i16qh' /* Credit Audit */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                        'Credit Audit')
                                      Container(
                                        width: 3.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .identifierTextColor,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(4.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(4.0),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.payments,
                                            color: FFAppState().currentPage ==
                                                    'Users'
                                                ? FlutterFlowTheme.of(context)
                                                    .identifierTextColor
                                                : FlutterFlowTheme.of(context)
                                                    .outstandingValue,
                                            size: 14.0,
                                          ),
                                        ),
                                        if (FFAppState().currentPage != 'Users')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().currentPage =
                                                      'Users';
                                                });

                                                context.pushNamed('UsersMain');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '4v5japm2' /* Payable */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                        if (FFAppState().currentPage == 'Users')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ftjwdfkl' /* Payable */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                    if (FFAppState().currentPage == 'Users')
                                      Container(
                                        width: 3.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .identifierTextColor,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(4.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(4.0),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
                                            .identifierTextColor,
                                        size: 20.0,
                                      ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.tools,
                                            color: FFAppState().currentPage ==
                                                    'Users'
                                                ? FlutterFlowTheme.of(context)
                                                    .identifierTextColor
                                                : FlutterFlowTheme.of(context)
                                                    .outstandingValue,
                                            size: 14.0,
                                          ),
                                        ),
                                        if (FFAppState().currentPage != 'Users')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState().currentPage =
                                                      'Users';
                                                });

                                                context.pushNamed('UsersMain');
                                              },
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ij9s6hhy' /* Configuration */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                        if (FFAppState().currentPage == 'Users')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    22.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9emqwqyh' /* Configuration */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                    if (FFAppState().currentPage == 'Users')
                                      Container(
                                        width: 3.0,
                                        height: 16.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .identifierTextColor,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(4.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(4.0),
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: InkWell(
                                      onTap: () async {
                                        setState(() {
                                          FFAppState().generalAppStateJSON =
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
                                        color: FlutterFlowTheme.of(context)
                                            .identifierTextColor,
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
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 60.0, 30.0, 0.0),
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
                          'iwxqohob' /* English */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              fontSize: 13.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 1.0, 0.0, 0.0),
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed('loginpagMain');
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'iui9ozu0' /* Logout */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
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
    );
  }
}
