import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'download_model.dart';
export 'download_model.dart';

class DownloadWidget extends StatefulWidget {
  const DownloadWidget({
    Key? key,
    double? netPremium,
    double? debitAmount,
    int? commission,
  })  : this.netPremium = netPremium ?? 0.00,
        this.debitAmount = debitAmount ?? 0.00,
        this.commission = commission ?? 000,
        super(key: key);

  final double netPremium;
  final double debitAmount;
  final int commission;

  @override
  _DownloadWidgetState createState() => _DownloadWidgetState();
}

class _DownloadWidgetState extends State<DownloadWidget> {
  late DownloadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DownloadModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Html(
          data:
              '<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<title>PDF</title>\n<style>\n      .container {\n         position: fixed;\n         top: 20%;\n         left: 28%;\n         border-radius: 7px;\n \n      }\n      .card{\n        width: 300px;\n         height: 400px;\n         padding: 30px;\n         background-color: #ffffff;\n         border: 1px solid black;\n         font-style: sans-serif;\n        border: 1px solid black;\n      }\n      h2{\n        text-align: center;\n         color: #ff0000;\n      }\n</style>\n</head>\n<body>\n<div class=\"container\">\n    <div class=\"card\">\n        <h2> Debit Note Statement</h2>\n        <h5> Net Premium: </h5> \n      \n        \n        <h5> Debit Amount: </h5> \n\n        <h5> Commission: </h5> \n     \n            \n       \n\n</div>\n</div>\n</body>\n</html>\n',
        ),
      ],
    );
  }
}
