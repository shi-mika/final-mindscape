import '/flutter_flow/flutter_flow_util.dart';
import 'comment_widget.dart' show CommentWidget;
import 'package:flutter/material.dart';

class CommentModel extends FlutterFlowModel<CommentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
