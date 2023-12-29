import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDWdJyPWDqzI3NELAd3o3zJfsQje7I6uqw",
            authDomain: "mindscape-6f81f.firebaseapp.com",
            projectId: "mindscape-6f81f",
            storageBucket: "mindscape-6f81f.appspot.com",
            messagingSenderId: "756019039235",
            appId: "1:756019039235:web:e445f21ecaa18415339236",
            measurementId: "G-3J20YH3JB9"));
  } else {
    await Firebase.initializeApp();
  }
}
