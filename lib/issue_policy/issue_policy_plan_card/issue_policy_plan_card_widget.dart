import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'issue_policy_plan_card_model.dart';
export 'issue_policy_plan_card_model.dart';

class IssuePolicyPlanCardWidget extends StatefulWidget {
  const IssuePolicyPlanCardWidget({
    Key? key,
    String? currency,
    this.amount,
    this.planName,
    this.moreDetails,
  })  : this.currency = currency ?? 'THB',
        super(key: key);

  final String currency;
  final double? amount;
  final String? planName;
  final String? moreDetails;

  @override
  _IssuePolicyPlanCardWidgetState createState() =>
      _IssuePolicyPlanCardWidgetState();
}

class _IssuePolicyPlanCardWidgetState extends State<IssuePolicyPlanCardWidget> {
  late IssuePolicyPlanCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssuePolicyPlanCardModel());

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
      width: 299.0,
      height: 175.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FFAppState().selectedPolicyCard == 1
              ? FlutterFlowTheme.of(context).identifierTextColor
              : FlutterFlowTheme.of(context).outstandingValue,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.radio_button_checked,
              color: FFAppState().selectedPolicyCard == 1
                  ? FlutterFlowTheme.of(context).identifierTextColor
                  : FlutterFlowTheme.of(context).outstandingValue,
              size: 24.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        widget.currency,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: FFAppState().selectedPolicyCard == 1
                                  ? FlutterFlowTheme.of(context)
                                      .identifierTextColor
                                  : FlutterFlowTheme.of(context)
                                      .outstandingValue,
                              fontSize: 24.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.amount?.toString(),
                          '0.00',
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyText1Family,
                              color: FFAppState().selectedPolicyCard == 1
                                  ? FlutterFlowTheme.of(context)
                                      .identifierTextColor
                                  : FlutterFlowTheme.of(context)
                                      .outstandingValue,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodyText1Family),
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Text(
                      widget.planName!,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FFAppState().selectedPolicyCard == 1
                                ? FlutterFlowTheme.of(context)
                                    .identifierTextColor
                                : FlutterFlowTheme.of(context).outstandingValue,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '6vb0s8dc' /* + More Details */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyText1Family,
                            color: FFAppState().selectedPolicyCard == 1
                                ? FlutterFlowTheme.of(context)
                                    .identifierTextColor
                                : FlutterFlowTheme.of(context).outstandingValue,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyText1Family),
                          ),
                    ),
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
