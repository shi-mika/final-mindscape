import '/flutter_flow/flutter_flow_util.dart';
import 'myday_widget.dart' show MydayWidget;
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class MydayModel extends FlutterFlowModel<MydayWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
