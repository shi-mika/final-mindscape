import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'admin_home_model.dart';
export 'admin_home_model.dart';

class AdminHomeWidget extends StatefulWidget {
  const AdminHomeWidget({Key? key}) : super(key: key);

  @override
  _AdminHomeWidgetState createState() => _AdminHomeWidgetState();
}

class _AdminHomeWidgetState extends State<AdminHomeWidget>
    with TickerProviderStateMixin {
  late AdminHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(0.698, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminHomeModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
      anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Container(
                  width: 270,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/bg-mindscape_(5).png',
                      ).image,
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 0,
                        color: FlutterFlowTheme.of(context).alternate,
                        offset: Offset(1, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              boxShadow: [
                                BoxShadow(
                                  color: FlutterFlowTheme.of(context).accent1,
                                  offset: Offset(0, 1),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 24, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.add_task_rounded,
                                        color:
                                        FlutterFlowTheme.of(context).info,
                                        size: 32,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Text(
                                          'check.io',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                            fontFamily: 'Outfit',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 20, 16, 16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 44,
                                        height: 44,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          borderRadius:
                                          BorderRadius.circular(12),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(2),
                                          child: ClipRRect(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                              Duration(milliseconds: 500),
                                              fadeOutDuration:
                                              Duration(milliseconds: 500),
                                              imageUrl:
                                              'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                              width: 44,
                                              height: 44,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              12, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Andrew D.',
                                                style: FlutterFlowTheme.of(
                                                    context)
                                                    .bodyLarge
                                                    .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                  FlutterFlowTheme.of(
                                                      context)
                                                      .info,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  'admin@gmail.com',
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .labelSmall
                                                      .override(
                                                    fontFamily:
                                                    'Readex Pro',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .accent4,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.notifications_none,
                                        color:
                                        FlutterFlowTheme.of(context).info,
                                        size: 28,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 12, 12),
                                    child: Container(
                                      width: 4,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color:
                                        FlutterFlowTheme.of(context).info,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.stacked_bar_chart_rounded,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 28,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'Dashboard',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .info,
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
                          EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 12, 12),
                                    child: Container(
                                      width: 4,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.forum_rounded,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 28,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'Chats',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .info,
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
                          EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 12, 12),
                                    child: Container(
                                      width: 4,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.grain,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 28,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'Projects',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .info,
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
                          EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(12),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 12, 12),
                                    child: Container(
                                      width: 4,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.wifi_tethering_rounded,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 28,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'Explore',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .info,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, -1),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 1470,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/bg-mindscape_(5).png',
                        ).image,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(16, 24, 16, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Overview Reports',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium,
                                      ),
                                      Text(
                                        'Review the details below of your recent reports.',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                      ),
                                    ].divide(SizedBox(height: 4)),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Assign',
                                      options: FFButtonOptions(
                                        height: 40,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 16, 0),
                                        iconPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge,
                                        elevation: 0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Print report',
                                    options: FFButtonOptions(
                                      height: 40,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 0, 16, 0),
                                      iconPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      color: Color(0xFFE1997A),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.white,
                                      ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: double.infinity,
                                                height: 100,
                                                constraints: BoxConstraints(
                                                  maxWidth: 370,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              0, 12, 0),
                                                          child: Icon(
                                                            Icons
                                                                .checklist_rounded,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondary,
                                                            size: 44,
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Clients',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .labelMedium,
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                ))
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        -1),
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .secondaryText,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        4,
                                                                        0),
                                                                    child: Text(
                                                                      '255',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .displaySmall,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      4,
                                                                      0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_upward_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .secondary,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                  false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                    child: Text(
                                                                      '32.2%',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodySmall
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        color:
                                                                        FlutterFlowTheme.of(context).secondary,
                                                                      ),
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
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: double.infinity,
                                                height: 100,
                                                constraints: BoxConstraints(
                                                  maxWidth: 370,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              0, 12, 0),
                                                          child: Icon(
                                                            Icons
                                                                .access_time_rounded,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondary,
                                                            size: 44,
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Mental Health \nProfessional',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .labelMedium,
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                ))
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        -1),
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .secondaryText,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        4,
                                                                        0),
                                                                    child: Text(
                                                                      '67',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .displaySmall,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      4,
                                                                      0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_upward_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .secondary,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                  false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                    child: Text(
                                                                      '45.5%',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodySmall
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        color:
                                                                        FlutterFlowTheme.of(context).secondary,
                                                                      ),
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
                                            ),
                                          ].divide(SizedBox(width: 16)),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: double.infinity,
                                                height: 100,
                                                constraints: BoxConstraints(
                                                  maxWidth: 370,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              0, 12, 0),
                                                          child: Icon(
                                                            Icons
                                                                .checklist_rounded,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondary,
                                                            size: 44,
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Routines',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .labelMedium,
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                ))
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        -1),
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .secondaryText,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        4,
                                                                        0),
                                                                    child: Text(
                                                                      '25',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .displaySmall,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      4,
                                                                      0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_upward_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .secondary,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                  false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                    child: Text(
                                                                      '32.2%',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodySmall
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        color:
                                                                        FlutterFlowTheme.of(context).secondary,
                                                                      ),
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
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: double.infinity,
                                                height: 100,
                                                constraints: BoxConstraints(
                                                  maxWidth: 370,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(0,
                                                              0, 12, 0),
                                                          child: Icon(
                                                            Icons
                                                                .access_time_rounded,
                                                            color: FlutterFlowTheme
                                                                .of(context)
                                                                .secondary,
                                                            size: 44,
                                                          ),
                                                        ),
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'Therapy Methhods',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .labelMedium,
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                ))
                                                                  Align(
                                                                    alignment:
                                                                    AlignmentDirectional(
                                                                        0,
                                                                        -1),
                                                                    child: Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: FlutterFlowTheme.of(
                                                                          context)
                                                                          .secondaryText,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        4,
                                                                        0),
                                                                    child: Text(
                                                                      '45',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .displaySmall,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      0,
                                                                      4,
                                                                      0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_upward_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .secondary,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                  context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                  false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                                    child: Text(
                                                                      '45.5%',
                                                                      style: FlutterFlowTheme.of(
                                                                          context)
                                                                          .bodySmall
                                                                          .override(
                                                                        fontFamily:
                                                                        'Readex Pro',
                                                                        color:
                                                                        FlutterFlowTheme.of(context).secondary,
                                                                      ),
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
                                            ),
                                          ].divide(SizedBox(width: 16)),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          constraints: BoxConstraints(
                                            maxWidth: 1270,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(16),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                0,
                                                                0,
                                                                12,
                                                                0),
                                                            child: Text(
                                                              'User Report',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .titleLarge,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                0,
                                                                4,
                                                                12,
                                                                0),
                                                            child: Text(
                                                              'Below are list of users and their various details.',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                0,
                                                                8,
                                                                0,
                                                                0),
                                                            child:
                                                            TextFormField(
                                                              controller: _model
                                                                  .textController,
                                                              focusNode: _model
                                                                  .textFieldFocusNode,
                                                              autofocus: true,
                                                              obscureText:
                                                              false,
                                                              decoration:
                                                              InputDecoration(
                                                                labelText:
                                                                'Search all users...',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                    context)
                                                                    .labelMedium,
                                                                hintStyle: FlutterFlowTheme.of(
                                                                    context)
                                                                    .labelMedium,
                                                                enabledBorder:
                                                                OutlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .alternate,
                                                                    width: 2,
                                                                  ),
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      12),
                                                                ),
                                                                focusedBorder:
                                                                OutlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .primary,
                                                                    width: 2,
                                                                  ),
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      12),
                                                                ),
                                                                errorBorder:
                                                                OutlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .error,
                                                                    width: 2,
                                                                  ),
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      12),
                                                                ),
                                                                focusedErrorBorder:
                                                                OutlineInputBorder(
                                                                  borderSide:
                                                                  BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                        context)
                                                                        .error,
                                                                    width: 2,
                                                                  ),
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      12),
                                                                ),
                                                                contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    20,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                suffixIcon:
                                                                Icon(
                                                                  Icons
                                                                      .search_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .secondaryText,
                                                                ),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .bodyMedium,
                                                              cursorColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .primary,
                                                              validator: _model
                                                                  .textControllerValidator
                                                                  .asValidator(
                                                                  context),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 16, 0, 0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                          .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                      BorderRadius.only(
                                                        bottomLeft:
                                                        Radius.circular(8),
                                                        bottomRight:
                                                        Radius.circular(8),
                                                        topLeft:
                                                        Radius.circular(8),
                                                        topRight:
                                                        Radius.circular(8),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          16, 0, 16, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            flex: 3,
                                                            child: Text(
                                                              'Name',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .labelSmall,
                                                            ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ))
                                                            Expanded(
                                                              flex: 2,
                                                              child: Text(
                                                                'Due Date',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .labelSmall,
                                                              ),
                                                            ),
                                                          Expanded(
                                                            flex: 2,
                                                            child: Text(
                                                              'Status',
                                                              style: FlutterFlowTheme
                                                                  .of(context)
                                                                  .labelSmall,
                                                            ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ))
                                                            Expanded(
                                                              flex: 1,
                                                              child: Text(
                                                                'Actions',
                                                                textAlign:
                                                                TextAlign
                                                                    .end,
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .labelSmall,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                ListView(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                  Axis.vertical,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 1),
                                                      child: Container(
                                                        width: 100,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .primaryBackground,
                                                              offset:
                                                              Offset(0, 1),
                                                            )
                                                          ],
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                flex: 3,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      8,
                                                                      12,
                                                                      8),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          BorderRadius.circular(40),
                                                                          child:
                                                                          Image.network(
                                                                            'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                            width:
                                                                            32,
                                                                            height:
                                                                            32,
                                                                            fit:
                                                                            BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Randy Peterson',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                child: Text(
                                                                                  'randy@name.com',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Fri. Aug 11th',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyMedium,
                                                                  ),
                                                                ),
                                                              Expanded(
                                                                flex: 2,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                        borderRadius:
                                                                        BorderRadius.circular(40),
                                                                        border:
                                                                        Border.all(
                                                                          color:
                                                                          FlutterFlowTheme.of(context).tertiary,
                                                                          width:
                                                                          1,
                                                                        ),
                                                                      ),
                                                                      alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            0,
                                                                            12,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Offline',
                                                                          style:
                                                                          FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                        Colors.transparent,
                                                                        borderRadius:
                                                                        30,
                                                                        borderWidth:
                                                                        1,
                                                                        buttonSize:
                                                                        44,
                                                                        icon:
                                                                        Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                          20,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
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
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 1),
                                                      child: Container(
                                                        width: 100,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .primaryBackground,
                                                              offset:
                                                              Offset(0, 1),
                                                            )
                                                          ],
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                flex: 3,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      8,
                                                                      12,
                                                                      8),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          BorderRadius.circular(40),
                                                                          child:
                                                                          Image.network(
                                                                            'https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTB8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                                                            width:
                                                                            32,
                                                                            height:
                                                                            32,
                                                                            fit:
                                                                            BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Randy Peterson',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                child: Text(
                                                                                  'randy@name.com',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Fri. Aug 11th',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyMedium,
                                                                  ),
                                                                ),
                                                              Expanded(
                                                                flex: 2,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent3,
                                                                        borderRadius:
                                                                        BorderRadius.circular(40),
                                                                        border:
                                                                        Border.all(
                                                                          color:
                                                                          FlutterFlowTheme.of(context).tertiary,
                                                                          width:
                                                                          1,
                                                                        ),
                                                                      ),
                                                                      alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          0),
                                                                      child:
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            0,
                                                                            12,
                                                                            0),
                                                                        child:
                                                                        Text(
                                                                          'Offline',
                                                                          style:
                                                                          FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                        Colors.transparent,
                                                                        borderRadius:
                                                                        30,
                                                                        borderWidth:
                                                                        1,
                                                                        buttonSize:
                                                                        44,
                                                                        icon:
                                                                        Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                          20,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
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
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 1),
                                                      child: Container(
                                                        width: 100,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .primaryBackground,
                                                              offset:
                                                              Offset(0, 1),
                                                            )
                                                          ],
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                flex: 3,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      8,
                                                                      12,
                                                                      8),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          BorderRadius.circular(40),
                                                                          child:
                                                                          Image.network(
                                                                            'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx1c2VyfGVufDB8fHx8MTY5MTUyNzkzMnww&ixlib=rb-4.0.3&q=80&w=400',
                                                                            width:
                                                                            32,
                                                                            height:
                                                                            32,
                                                                            fit:
                                                                            BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Randy Peterson',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                child: Text(
                                                                                  'randy@name.com',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Fri. Aug 11th',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyMedium,
                                                                  ),
                                                                ),
                                                              Expanded(
                                                                flex: 2,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        borderRadius:
                                                                        BorderRadius.circular(20),
                                                                        border:
                                                                        Border.all(
                                                                          color:
                                                                          FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12,
                                                                              0,
                                                                              12,
                                                                              0),
                                                                          child:
                                                                          Text(
                                                                            'Online',
                                                                            style:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                        Colors.transparent,
                                                                        borderRadius:
                                                                        30,
                                                                        borderWidth:
                                                                        1,
                                                                        buttonSize:
                                                                        44,
                                                                        icon:
                                                                        Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                          20,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
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
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          0, 0, 0, 1),
                                                      child: Container(
                                                        width: 100,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 0,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .primaryBackground,
                                                              offset:
                                                              Offset(0, 1),
                                                            )
                                                          ],
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(16,
                                                              0, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Expanded(
                                                                flex: 3,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                      0,
                                                                      8,
                                                                      12,
                                                                      8),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                        child:
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                          BorderRadius.circular(40),
                                                                          child:
                                                                          Image.network(
                                                                            'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                                                            width:
                                                                            32,
                                                                            height:
                                                                            32,
                                                                            fit:
                                                                            BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                          Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Randy Peterson',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                child: Text(
                                                                                  'randy@name.com',
                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Text(
                                                                    'Fri. Aug 11th',
                                                                    style: FlutterFlowTheme.of(
                                                                        context)
                                                                        .bodyMedium,
                                                                  ),
                                                                ),
                                                              Expanded(
                                                                flex: 2,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                      32,
                                                                      decoration:
                                                                      BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent2,
                                                                        borderRadius:
                                                                        BorderRadius.circular(20),
                                                                        border:
                                                                        Border.all(
                                                                          color:
                                                                          FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                        child:
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12,
                                                                              0,
                                                                              12,
                                                                              0),
                                                                          child:
                                                                          Text(
                                                                            'Online',
                                                                            style:
                                                                            FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                context,
                                                                phone: false,
                                                              ))
                                                                Expanded(
                                                                  flex: 1,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                    children: [
                                                                      FlutterFlowIconButton(
                                                                        borderColor:
                                                                        Colors.transparent,
                                                                        borderRadius:
                                                                        30,
                                                                        borderWidth:
                                                                        1,
                                                                        buttonSize:
                                                                        44,
                                                                        icon:
                                                                        Icon(
                                                                          Icons
                                                                              .more_vert,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                          20,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            border: Border.all(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 16, 0, 12),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 0, 0),
                                                  child: Text(
                                                    'Community Activity',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .titleLarge,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 4, 0, 0),
                                                  child: Text(
                                                    'Below is an overview of tasks & activity completed.',
                                                    style: FlutterFlowTheme.of(
                                                        context)
                                                        .labelMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 4, 16, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        height: 32,
                                                        constraints:
                                                        BoxConstraints(
                                                          maxHeight: 32,
                                                        ),
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(30),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(8,
                                                              0, 8, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .radio_button_checked_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .primary,
                                                                size: 20,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    8,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  'Posts',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 32,
                                                        constraints:
                                                        BoxConstraints(
                                                          maxHeight: 32,
                                                        ),
                                                        decoration:
                                                        BoxDecoration(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(30),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(8,
                                                              0, 8, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .radio_button_checked_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                    context)
                                                                    .secondary,
                                                                size: 20,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    8,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  'Completed',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16, 12, 16, 0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                    child: Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(10),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                              .of(context)
                                                              .alternate,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                      child: Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0, 16,
                                                            0, 0),
                                                        child: Container(
                                                          width:
                                                          double.infinity,
                                                          height: 200,
                                                          child:
                                                          FlutterFlowLineChart(
                                                            data: [
                                                              FFLineChartData(
                                                                xData: List.generate(
                                                                    random_data
                                                                        .randomInteger(
                                                                        0,
                                                                        0),
                                                                        (index) =>
                                                                        random_data
                                                                            .randomDate()),
                                                                yData: List.generate(
                                                                    random_data
                                                                        .randomInteger(
                                                                        0,
                                                                        0),
                                                                        (index) => random_data
                                                                        .randomInteger(
                                                                        0,
                                                                        1000)),
                                                                settings:
                                                                LineChartBarData(
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .primary,
                                                                  barWidth: 2,
                                                                  isCurved:
                                                                  true,
                                                                  preventCurveOverShooting:
                                                                  true,
                                                                  dotData:
                                                                  FlDotData(
                                                                      show:
                                                                      false),
                                                                ),
                                                              ),
                                                              FFLineChartData(
                                                                xData: List.generate(
                                                                    random_data
                                                                        .randomInteger(
                                                                        0,
                                                                        0),
                                                                        (index) => random_data
                                                                        .randomInteger(
                                                                        0,
                                                                        10)),
                                                                yData: List.generate(
                                                                    random_data
                                                                        .randomInteger(
                                                                        0,
                                                                        0),
                                                                        (index) => random_data
                                                                        .randomInteger(
                                                                        0,
                                                                        10)),
                                                                settings:
                                                                LineChartBarData(
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .secondary,
                                                                  barWidth: 2,
                                                                  dotData:
                                                                  FlDotData(
                                                                      show:
                                                                      false),
                                                                ),
                                                              )
                                                            ],
                                                            chartStylingInfo:
                                                            ChartStylingInfo(
                                                              backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                  context)
                                                                  .secondaryBackground,
                                                              showGrid: true,
                                                              showBorder: false,
                                                            ),
                                                            axisBounds:
                                                            AxisBounds(),
                                                            xAxisLabelInfo:
                                                            AxisLabelInfo(
                                                              title: 'dates',
                                                              titleTextStyle:
                                                              TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                            yAxisLabelInfo:
                                                            AxisLabelInfo(
                                                              title:
                                                              'engagement',
                                                              titleTextStyle:
                                                              TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation']!),
                                      ].divide(SizedBox(height: 16)),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16)),
                            ),
                          ),
                        ].addToEnd(SizedBox(height: 44)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
