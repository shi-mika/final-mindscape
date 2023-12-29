import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'history_therapy_widget.dart' show HistoryTherapyWidget;
import 'package:flutter/material.dart';

class HistoryTherapyModel extends FlutterFlowModel<HistoryTherapyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.

  Map<EmotionRecord, bool> checkboxValueMap1 = {};
  List<EmotionRecord> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.

  Map<EmotionRecord, bool> checkboxValueMap2 = {};
  List<EmotionRecord> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
