import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD46PNb0CdGefHEitmAUhGScu9hq_1zxjk",
            authDomain: "planner-72088.firebaseapp.com",
            projectId: "planner-72088",
            storageBucket: "planner-72088.appspot.com",
            messagingSenderId: "1092356491233",
            appId: "1:1092356491233:web:6f9be7c47d557cb7f1b4a0",
            measurementId: "G-41RYZZ7DSE"));
  } else {
    await Firebase.initializeApp();
  }
}
