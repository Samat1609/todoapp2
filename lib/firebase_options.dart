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
    apiKey: 'AIzaSyAuKKQVQWrsa-qhU4oocJ3w7FsES6DXd1w',
    appId: '1:457090920872:web:faff3e31574a30b2306d9d',
    messagingSenderId: '457090920872',
    projectId: 'samat-e2963',
    authDomain: 'samat-e2963.firebaseapp.com',
    storageBucket: 'samat-e2963.appspot.com',
    measurementId: 'G-MKBYWPLS07',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-q3CQ3Kzi3cBeLq_5ucBKtAXAUGbEl6I',
    appId: '1:457090920872:android:3dc6a8c0ea08d03a306d9d',
    messagingSenderId: '457090920872',
    projectId: 'samat-e2963',
    storageBucket: 'samat-e2963.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmNib36OOL4AO11ADrhgpx1dl_l5wZiZw',
    appId: '1:457090920872:ios:98a236bdd36250c5306d9d',
    messagingSenderId: '457090920872',
    projectId: 'samat-e2963',
    storageBucket: 'samat-e2963.appspot.com',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmNib36OOL4AO11ADrhgpx1dl_l5wZiZw',
    appId: '1:457090920872:ios:cc6b3fae7b41419b306d9d',
    messagingSenderId: '457090920872',
    projectId: 'samat-e2963',
    storageBucket: 'samat-e2963.appspot.com',
    iosBundleId: 'com.example.todoapp.RunnerTests',
  );
}