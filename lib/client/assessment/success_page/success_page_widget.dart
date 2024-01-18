import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'success_page_model.dart';
export 'success_page_model.dart';

class SuccessPageWidget extends StatefulWidget {
  const SuccessPageWidget({super.key});

  @override
  _SuccessPageWidgetState createState() => _SuccessPageWidgetState();
}

class _SuccessPageWidgetState extends State<SuccessPageWidget> {
  late SuccessPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).info,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-1.22, -1.08),
                    child: Container(
                      width: 397.0,
                      height: 859.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/app_pics_(2).png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.network(
                            'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                            frameRate: FrameRate(60.0),
                            repeat: false,
                            animate: true,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Text(
                        'Congrats!',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 32.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Thanks for taking the quiz.',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            FFAppState().updateValuesAtIndex(
                              0,
                              (_) => () {
                                if (FFAppState().answers[0] ==
                                    'Rare, less than a day or two') {
                                  return 1;
                                } else if (FFAppState().answers[0] ==
                                    'Several days') {
                                  return 2;
                                } else if (FFAppState().answers[0] ==
                                    'More than half the days') {
                                  return 3;
                                } else if (FFAppState().answers[0] ==
                                    'Nearly every day') {
                                  return 4;
                                } else {
                                  return 0;
                                }
                              }(),
                            );
                          });
                          setState(() {
                            FFAppState().updateValuesAtIndex(
                              1,
                              (_) => () {
                                if (FFAppState().answers[1] ==
                                    'Rare, less than a day or two') {
                                  return 1;
                                } else if (FFAppState().answers[1] ==
                                    'Several days') {
                                  return 2;
                                } else if (FFAppState().answers[1] ==
                                    'More than half the days') {
                                  return 3;
                                } else if (FFAppState().answers[1] ==
                                    'Nearly every day') {
                                  return 4;
                                } else {
                                  return 0;
                                }
                              }(),
                            );
                          });
                          setState(() {
                            FFAppState().updateValuesAtIndex(
                              2,
                              (_) => () {
                                if (FFAppState().answers[2] ==
                                    'Rare, less than a day or two') {
                                  return 1;
                                } else if (FFAppState().answers[2] ==
                                    'Several days') {
                                  return 2;
                                } else if (FFAppState().answers[2] ==
                                    'More than half the days') {
                                  return 3;
                                } else if (FFAppState().answers[2] ==
                                    'Nearly every day') {
                                  return 4;
                                } else {
                                  return 0;
                                }
                              }(),
                            );
                          });
                          setState(() {
                            FFAppState().updateValuesAtIndex(
                              3,
                              (_) => () {
                                if (FFAppState().answers[3] ==
                                    'Rare, less than a day or two') {
                                  return 1;
                                } else if (FFAppState().answers[3] ==
                                    'Several days') {
                                  return 2;
                                } else if (FFAppState().answers[3] ==
                                    'More than half the days') {
                                  return 3;
                                } else if (FFAppState().answers[3] ==
                                    'Nearly every day') {
                                  return 4;
                                } else {
                                  return 0;
                                }
                              }(),
                            );
                          });
                          setState(() {
                            FFAppState().updateValuesAtIndex(
                              4,
                              (_) => () {
                                if (FFAppState().answers[4] ==
                                    'Rare, less than a day or two') {
                                  return 1;
                                } else if (FFAppState().answers[4] ==
                                    'Several days') {
                                  return 2;
                                } else if (FFAppState().answers[4] ==
                                    'More than half the days') {
                                  return 3;
                                } else if (FFAppState().answers[4] ==
                                    'Nearly every day') {
                                  return 4;
                                } else {
                                  return 0;
                                }
                              }(),
                            );
                          });

                          await AssessmentRecord.collection.doc().set({
                            ...createAssessmentRecordData(
                              uid: currentUserReference?.id,
                              sum: FFAppState().values[0] +
                                  FFAppState().values[1] +
                                  FFAppState().values[2] +
                                  FFAppState().values[3] +
                                  FFAppState().values[4],
                            ),
                            ...mapToFirestore(
                              {
                                'date': FieldValue.serverTimestamp(),
                                'result': FFAppState().answers,
                              },
                            ),
                          });

                          context.goNamed('home');
                        },
                        text: 'Go Home',
                        options: FFButtonOptions(
                          width: 130.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Outfit',
                                    color: const Color(0xFF39D2C0),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40.0),
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
    );
  }
}
