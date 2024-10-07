import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAZU9NEqjov-lL3NnBu1Vj0qmXjmga5uQc",
            authDomain: "farm-bazzar-sqpdan.firebaseapp.com",
            projectId: "farm-bazzar-sqpdan",
            storageBucket: "farm-bazzar-sqpdan.appspot.com",
            messagingSenderId: "476589824279",
            appId: "1:476589824279:web:9f1c1c2303703921627f52"));
  } else {
    await Firebase.initializeApp();
  }
}
