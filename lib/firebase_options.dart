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
    apiKey: 'AIzaSyBgMSXLaObI0VJ3m3oFEUdL-wAphhSPIZs',
    appId: '1:507943780278:web:7a936ba5436b5fd7300b17',
    messagingSenderId: '507943780278',
    projectId: 'flutter-auth-pmr',
    authDomain: 'flutter-auth-pmr.firebaseapp.com',
    storageBucket: 'flutter-auth-pmr.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBf1LwniKBLyOyUM5NE6Pvrepl9oVn41TI',
    appId: '1:507943780278:android:f09df926f00580ce300b17',
    messagingSenderId: '507943780278',
    projectId: 'flutter-auth-pmr',
    storageBucket: 'flutter-auth-pmr.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAL1qFAjVspFmFjpSskD1N0O1Hi3SCDWhw',
    appId: '1:507943780278:ios:f463914df4628c8f300b17',
    messagingSenderId: '507943780278',
    projectId: 'flutter-auth-pmr',
    storageBucket: 'flutter-auth-pmr.appspot.com',
    iosBundleId: 'com.example.flutterAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAL1qFAjVspFmFjpSskD1N0O1Hi3SCDWhw',
    appId: '1:507943780278:ios:eff005d2cb68f910300b17',
    messagingSenderId: '507943780278',
    projectId: 'flutter-auth-pmr',
    storageBucket: 'flutter-auth-pmr.appspot.com',
    iosBundleId: 'com.example.flutterAuth.RunnerTests',
  );
}
