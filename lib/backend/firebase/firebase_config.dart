import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA-z7oYrkjxufOVGMQ274z2y7R0PulaeJo",
            authDomain: "my-movie-app-5df95.firebaseapp.com",
            projectId: "my-movie-app-5df95",
            storageBucket: "my-movie-app-5df95.firebasestorage.app",
            messagingSenderId: "1029787073203",
            appId: "1:1029787073203:web:c6b096a9670422fe42cec6",
            measurementId: "G-R3JT0PJRED"));
  } else {
    await Firebase.initializeApp();
  }
}
