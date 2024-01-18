import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'emptycomment_model.dart';
export 'emptycomment_model.dart';

class EmptycommentWidget extends StatefulWidget {
  const EmptycommentWidget({super.key});

  @override
  _EmptycommentWidgetState createState() => _EmptycommentWidgetState();
}

class _EmptycommentWidgetState extends State<EmptycommentWidget> {
  late EmptycommentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptycommentModel());
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
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
          child: Icon(
            Icons.notifications_none,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 50.0,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'No Comments',
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
          child: Text(
            'Be the one to comment on this post first!',
            style: FlutterFlowTheme.of(context).labelMedium,
          ),
        ),
      ],
    );
  }
}
