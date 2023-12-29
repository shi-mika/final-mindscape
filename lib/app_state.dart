import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _routine = [
    'today\'s \naffirmation\n\n1 min',
    'today\'s breathing \nexercise\n\n5 mins',
    'today\'s guided\nmeditation\n\n6 mins'
  ];
  List<String> get routine => _routine;
  set routine(List<String> value) {
    _routine = value;
  }

  void addToRoutine(String value) {
    _routine.add(value);
  }

  void removeFromRoutine(String value) {
    _routine.remove(value);
  }

  void removeAtIndexFromRoutine(int index) {
    _routine.removeAt(index);
  }

  void updateRoutineAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _routine[index] = updateFn(_routine[index]);
  }

  void insertAtIndexInRoutine(int index, String value) {
    _routine.insert(index, value);
  }

  List<String> _image = [
    'https://picsum.photos/seed/242/600',
    'https://picsum.photos/seed/472/600',
    'https://picsum.photos/seed/546/600',
    'https://picsum.photos/seed/181/600',
    'https://picsum.photos/seed/426/600'
  ];
  List<String> get image => _image;
  set image(List<String> value) {
    _image = value;
  }

  void addToImage(String value) {
    _image.add(value);
  }

  void removeFromImage(String value) {
    _image.remove(value);
  }

  void removeAtIndexFromImage(int index) {
    _image.removeAt(index);
  }

  void updateImageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _image[index] = updateFn(_image[index]);
  }

  void insertAtIndexInImage(int index, String value) {
    _image.insert(index, value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
