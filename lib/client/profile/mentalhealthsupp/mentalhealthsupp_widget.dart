import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'mentalhealthsupp_model.dart';
export 'mentalhealthsupp_model.dart';

class MentalhealthsuppWidget extends StatefulWidget {
  const MentalhealthsuppWidget({super.key});

  @override
  _MentalhealthsuppWidgetState createState() => _MentalhealthsuppWidgetState();
}

class _MentalhealthsuppWidgetState extends State<MentalhealthsuppWidget>
    with TickerProviderStateMixin {
  late MentalhealthsuppModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MentalhealthsuppModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xFF14181B),
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                  Text(
                    'Mental Health Support',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          color: const Color(0xFF14181B),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 12.0,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          unselectedBackgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 12.0,
                          elevation: 0.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          tabs: const [
                            Tab(
                              text: 'Mental Health \nProfessionals',
                            ),
                            Tab(
                              text: 'Mental Health \n      Hotline',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 0.0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'https://res.cloudinary.com/dywkbcfp5/image/upload/w_200,h_200,c_thumb,g_face,f_webp/v1678839614/zgyrgfndjwdnraymu3kh.png',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Philipp Chen R. Tan RPsy',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639231666780',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .assignment_ind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            17.0,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: SelectionArea(
                                                                                  child: AutoSizeText(
                                                                                'trauma, anxiety and depression, \nself-esteem.',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              )),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/jpeg;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Rhoda Emia - Avarez, RPsy',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639333932816',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .assignment_ind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            17.0,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'trauma, anxiety and depression, \nself-esteem.',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'https://media.licdn.com/dms/image/C4E03AQGG_5w5sXyf1g/profile-displayphoto-shrink_200_200/0/1517595957271?e=2147483647&v=beta&t=e26qy-xcA5ROrSV9DuBQFy6HI8YnyZ0ILiHUB7zxqGc',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Rose Gonato, RPsy',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639399670666',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .assignment_ind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            17.0,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'trauma, anxiety and depression, \nself-esteem.',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'https://media.licdn.com/dms/image/C4E03AQEhW5MbLMBo2Q/profile-displayphoto-shrink_200_200/0/1517592073403?e=2147483647&v=beta&t=MvLQCiZ_hm81nTiJNFYM0AfDwteNcFl0SgGE0sV8USc',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Yllen G. Agpasa, RPsy',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+63932934530',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .assignment_ind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            17.0,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'tdevelopmental health, order adults',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'https://scontent.fceb3-1.fna.fbcdn.net/v/t1.6435-9/142159240_435315791236115_3454348910206943883_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=be3454&_nc_eui2=AeHT5aoWPFlCJk65qsJ-txKP8P_9-y7xg4jw__37LvGDiH3q5Xp5BzR3LO6QJNBzS5-_edU6FedwWKlkJRSj2lBm&_nc_ohc=fwqAYZ8RmSIAX-ortsI&_nc_ht=scontent.fceb3-1.fna&oh=00_AfA6iSA6c8uKZ3tcOIggIyIbwfnRmKOcXTXoVBTx-n1AmA&oe=65BE5DF7',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Lemuel Sagaral, RPsy',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639231666780',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .assignment_ind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            17.0,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'family counseling',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/jpeg;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Vince Evagelista, RPsy',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639231666780',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .assignment_ind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            17.0,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'developmental health, meaning making.',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      fontSize: 13.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'https://scontent.fceb3-1.fna.fbcdn.net/v/t1.6435-9/104106225_10158791416579560_5187667945366435201_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=be3454&_nc_eui2=AeGro9L6iD4DubCcFZcaWNE8FsMOFbiKn30Www4VuIqffQ6tCx-PL92I8TXmlkUmzqZC75LTP_9b3IPs1ovEYmZi&_nc_ohc=5xy5fyvvr6kAX86R8si&_nc_ht=scontent.fceb3-1.fna&oh=00_AfBMWtR_XhcXjLSMA_9HtB2EuqfldRjyL1UibMWzcQM5Lw&oe=65BE6915',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Kirk Patrick S. Castro, RPsy',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              15.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '(032)2631837',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .assignment_ind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            17.0,
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'developmental health, meaning making.',
                                                                                maxLines: 1,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      fontSize: 13.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
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
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 8.0, 8.0, 0.0),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/jpeg;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'NCMHCCrisisHotline',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              FaIcon(
                                                                            FontAwesomeIcons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                13.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639086392672',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/jpeg;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Center for Health Development',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.contact_phone_rounded,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639177759256',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/png;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Tawag Paglaum',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639399365433',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/png;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Philippine Mental Health Association',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639175652036',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/jpeg;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Natasha Goulburn Foundation',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+639399365433',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
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
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 1.0),
                                          child: Container(
                                            width: 100.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 0.0,
                                                  color: Color(0xFFE0E3E7),
                                                  offset: Offset(0.0, 1.0),
                                                )
                                              ],
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40.0),
                                                    child: Image.network(
                                                      'data:image/jpeg;base64,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',
                                                      width: 60.0,
                                                      height: 60.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Living free foundation',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF14181B),
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Icon(
                                                                            Icons.phone,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            size:
                                                                                17.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '+63955867317',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
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
                                            ),
                                          ),
                                        ),
                                      ],
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
              if (dateTimeFormat('jm', getCurrentTimestamp) == '5:02 PM')
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Button',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
