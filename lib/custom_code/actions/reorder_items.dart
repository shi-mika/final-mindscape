// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> reorderItems(
  List<String> list,
  int oldIndex,
  int newIndex,
) async {
  // If the item is being moved to a position further down the list
  // (i.e., to a higher index), decrement the newIndex by 1.
  // This adjustment is needed because removing an item from its original
  // position will shift the indices of all subsequent items.
  if (oldIndex < newIndex) {
    newIndex -= 1;
  }

  // Remove the item from its original position in the list and store
  // it in the 'item' variable.
  final item = list.removeAt(oldIndex);

  // Insert the removed item into its new position in the list.
  list.insert(newIndex, item);

  // Return the modified list.
  return list;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
