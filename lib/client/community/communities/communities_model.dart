import '/flutter_flow/flutter_flow_util.dart';
import 'communities_widget.dart' show CommunitiesWidget;
import 'package:flutter/material.dart';

class CommunitiesModel extends FlutterFlowModel<CommunitiesWidget> {
  ///  Local state fields for this page.

  bool isLiked = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  String currentPageLink = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
