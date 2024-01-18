import '/client/chat_groupwbubbles/delete_dialog/delete_dialog_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_details_overlay_widget.dart' show ChatDetailsOverlayWidget;
import 'package:flutter/material.dart';

class ChatDetailsOverlayModel
    extends FlutterFlowModel<ChatDetailsOverlayWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for deleteDialog component.
  late DeleteDialogModel deleteDialogModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    deleteDialogModel = createModel(context, () => DeleteDialogModel());
  }

  @override
  void dispose() {
    deleteDialogModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
