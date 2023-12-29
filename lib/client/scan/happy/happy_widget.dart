import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'happy_model.dart';
export 'happy_model.dart';

class HappyWidget extends StatefulWidget {
  const HappyWidget({super.key});

  @override
  _HappyWidgetState createState() => _HappyWidgetState();
}

class _HappyWidgetState extends State<HappyWidget>
    with TickerProviderStateMixin {
  late HappyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 2000.ms,
          duration: 0.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HappyModel());
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
                    'assets/images/368281919_185182844573832_8903080904728699293_n.png',
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
                  'Thats awesome!!',
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
                    context.pushNamed('scan1');
                  },
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.04, -0.22),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('scan1');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/smile.gif',
                      width: 300.0,
                      height: 282.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ).animateOnPageLoad(animationsMap['stackOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
