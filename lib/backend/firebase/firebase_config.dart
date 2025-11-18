import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBDkWkm2U_NoepCg-pu6tKQVWq1LIqE_k4",
            authDomain: "alternate-reailities-tr-069d6p.firebaseapp.com",
            projectId: "alternate-reailities-tr-069d6p",
            storageBucket: "alternate-reailities-tr-069d6p.firebasestorage.app",
            messagingSenderId: "802183380555",
            appId: "1:802183380555:web:66205170158931e01317ce",
            measurementId: "G-LKQBJY66B6"));
  } else {
    await Firebase.initializeApp();
  }
}
