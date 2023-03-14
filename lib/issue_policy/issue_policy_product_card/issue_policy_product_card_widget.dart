import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'issue_policy_product_card_model.dart';
export 'issue_policy_product_card_model.dart';

class IssuePolicyProductCardWidget extends StatefulWidget {
  const IssuePolicyProductCardWidget({
    Key? key,
    this.productName,
  }) : super(key: key);

  final String? productName;

  @override
  _IssuePolicyProductCardWidgetState createState() =>
      _IssuePolicyProductCardWidgetState();
}

class _IssuePolicyProductCardWidgetState
    extends State<IssuePolicyProductCardWidget> {
  late IssuePolicyProductCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IssuePolicyProductCardModel());

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
      width: 330.0,
      height: 170.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0xFFFFE6E6),
            offset: Offset(0.0, 1.0),
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.productName!,
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyText1Family,
                  fontSize: 18.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyText1Family),
                ),
          ),
        ],
      ),
    );
  }
}
