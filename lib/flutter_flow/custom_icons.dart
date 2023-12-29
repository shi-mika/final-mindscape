import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _myFlatterIconFamily = 'MyFlatterIcon';

  // MyFlutterApp
  static const IconData kchatBubble =
      IconData(0xe800, fontFamily: _myFlutterAppFamily);
  static const IconData kcomment =
      IconData(0xe801, fontFamily: _myFlutterAppFamily);
  static const IconData kmoreHoriz =
      IconData(0xe802, fontFamily: _myFlutterAppFamily);

  // MyFlatterIcon
  static const IconData kflashAuto =
      IconData(0xe800, fontFamily: _myFlatterIconFamily);
  static const IconData khdrOn =
      IconData(0xe803, fontFamily: _myFlatterIconFamily);
}
