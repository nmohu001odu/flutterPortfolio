// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCExiwgTXhxJDtCzxAubSw8PJqEFerct6s',
    appId: '1:1008928401322:web:da692d8122612ecbb7edd3',
    messagingSenderId: '1008928401322',
    projectId: 'portfoliowebsite-35bd6',
    authDomain: 'portfoliowebsite-35bd6.firebaseapp.com',
    storageBucket: 'portfoliowebsite-35bd6.firebasestorage.app',
    measurementId: 'G-R55JZ2LYEL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHkg8cnWZb_YMUMNL3q4nO4I7C_XcSSmo',
    appId: '1:1008928401322:android:acc4b6d8dcc0de35b7edd3',
    messagingSenderId: '1008928401322',
    projectId: 'portfoliowebsite-35bd6',
    storageBucket: 'portfoliowebsite-35bd6.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzkgPLzQtMfVpe45F-ejCfNfqSsSQxBQM',
    appId: '1:1008928401322:ios:56050ba35a488fb9b7edd3',
    messagingSenderId: '1008928401322',
    projectId: 'portfoliowebsite-35bd6',
    storageBucket: 'portfoliowebsite-35bd6.firebasestorage.app',
    iosBundleId: 'com.example.flutterPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzkgPLzQtMfVpe45F-ejCfNfqSsSQxBQM',
    appId: '1:1008928401322:ios:56050ba35a488fb9b7edd3',
    messagingSenderId: '1008928401322',
    projectId: 'portfoliowebsite-35bd6',
    storageBucket: 'portfoliowebsite-35bd6.firebasestorage.app',
    iosBundleId: 'com.example.flutterPortfolio',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCExiwgTXhxJDtCzxAubSw8PJqEFerct6s',
    appId: '1:1008928401322:web:42e6c27b1e7228b2b7edd3',
    messagingSenderId: '1008928401322',
    projectId: 'portfoliowebsite-35bd6',
    authDomain: 'portfoliowebsite-35bd6.firebaseapp.com',
    storageBucket: 'portfoliowebsite-35bd6.firebasestorage.app',
    measurementId: 'G-JX3W61BLRD',
  );
}
