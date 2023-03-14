import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBVxHQVUD2NSNiSjGMIuQZfed7EEnx8XtQ",
            authDomain: "tpt-dev-prj.firebaseapp.com",
            projectId: "tpt-dev-prj",
            storageBucket: "tpt-dev-prj.appspot.com",
            messagingSenderId: "472491850876",
            appId: "1:472491850876:web:505e72305039687b0c5df9",
            measurementId: "G-04XW2L5SZH"));
  } else {
    await Firebase.initializeApp();
  }
}
