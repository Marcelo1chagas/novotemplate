import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDQPimcgXGjK0kxkHvEDreHOhe5BOU25v0",
            authDomain: "party-now-app.firebaseapp.com",
            projectId: "party-now-app",
            storageBucket: "party-now-app.appspot.com",
            messagingSenderId: "16332291329",
            appId: "1:16332291329:web:959aca6be8a4a96b03af00",
            measurementId: "G-WJC238M2J2"));
  } else {
    await Firebase.initializeApp();
  }
}
