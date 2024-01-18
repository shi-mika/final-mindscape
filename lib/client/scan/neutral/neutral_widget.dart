import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'neutral_model.dart';
export 'neutral_model.dart';

class NeutralWidget extends StatefulWidget {
  const NeutralWidget({super.key});

  @override
  _NeutralWidgetState createState() => _NeutralWidgetState();
}

class _NeutralWidgetState extends State<NeutralWidget> {
  late NeutralModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NeutralModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/neutrall.png',
                    width: 393.0,
                    height: 854.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.01, 0.16),
                child: Text(
                  'Today you are ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.07, 0.42),
                child: Text(
                  'Thats okay!!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 35.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.92, -0.95),
                child: FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.chevron_left,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
