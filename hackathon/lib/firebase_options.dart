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
    apiKey: 'AIzaSyDTJZsNA2F0SjQqS8STdbVTUQh9Dj0UqrY',
    appId: '1:450397091165:web:212f14c3de1a0121daa4b4',
    messagingSenderId: '450397091165',
    projectId: 'my-chat-app-823ff',
    authDomain: 'my-chat-app-823ff.firebaseapp.com',
    storageBucket: 'my-chat-app-823ff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzK3GukEFffWCifZ_i6lXWmA44Ycq0oNE',
    appId: '1:450397091165:android:7ff89b3a9ea122cadaa4b4',
    messagingSenderId: '450397091165',
    projectId: 'my-chat-app-823ff',
    storageBucket: 'my-chat-app-823ff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXKBc-qq1OAjPv0OEHIB5TtOeIbF23IDg',
    appId: '1:450397091165:ios:ffd88ed19a45a5dadaa4b4',
    messagingSenderId: '450397091165',
    projectId: 'my-chat-app-823ff',
    storageBucket: 'my-chat-app-823ff.appspot.com',
    iosBundleId: 'com.example.hackathon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXKBc-qq1OAjPv0OEHIB5TtOeIbF23IDg',
    appId: '1:450397091165:ios:12f4e04f4516b41bdaa4b4',
    messagingSenderId: '450397091165',
    projectId: 'my-chat-app-823ff',
    storageBucket: 'my-chat-app-823ff.appspot.com',
    iosBundleId: 'com.example.hackathon.RunnerTests',
  );
}
