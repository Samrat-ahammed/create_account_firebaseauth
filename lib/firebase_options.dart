// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC0jimurEpCVKlGLTkCIaJqbjmTwTSOLnE',
    appId: '1:659061177615:web:8a2a4cb77b0caa1582527a',
    messagingSenderId: '659061177615',
    projectId: 'creataccount-b1e73',
    authDomain: 'creataccount-b1e73.firebaseapp.com',
    storageBucket: 'creataccount-b1e73.appspot.com',
    measurementId: 'G-P3QS89H35P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0YjLRWBx6HVH5SueRuUPvSS-MxzSA4-w',
    appId: '1:659061177615:android:877103c079b8390682527a',
    messagingSenderId: '659061177615',
    projectId: 'creataccount-b1e73',
    storageBucket: 'creataccount-b1e73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmeCuWMkvgJywJhuECznR2L-TEiwRRrZE',
    appId: '1:659061177615:ios:4d7e1fb2c842047182527a',
    messagingSenderId: '659061177615',
    projectId: 'creataccount-b1e73',
    storageBucket: 'creataccount-b1e73.appspot.com',
    iosClientId: '659061177615-87ncjl5ft0qjhace6k9vbh73v93rphcr.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseMyCreateAccount',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmeCuWMkvgJywJhuECznR2L-TEiwRRrZE',
    appId: '1:659061177615:ios:4d7e1fb2c842047182527a',
    messagingSenderId: '659061177615',
    projectId: 'creataccount-b1e73',
    storageBucket: 'creataccount-b1e73.appspot.com',
    iosClientId: '659061177615-87ncjl5ft0qjhace6k9vbh73v93rphcr.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseMyCreateAccount',
  );
}
