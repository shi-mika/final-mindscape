import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'therapyquiz3_widget.dart' show Therapyquiz3Widget;
import 'package:flutter/material.dart';

class Therapyquiz3Model extends FlutterFlowModel<Therapyquiz3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
