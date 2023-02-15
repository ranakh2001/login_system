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
    apiKey: 'AIzaSyDAUH-w819eYnqs4MgdmodL8vygI3aiTZU',
    appId: '1:905902648481:web:8da47ebd792b2c5a82d4e0',
    messagingSenderId: '905902648481',
    projectId: 'chat-b3165',
    authDomain: 'chat-b3165.firebaseapp.com',
    storageBucket: 'chat-b3165.appspot.com',
    measurementId: 'G-LSVM60424Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZPrRMp6Jgyg9L7W4lnPg93aTi5kKM-Cw',
    appId: '1:905902648481:android:7f210891cebbdae882d4e0',
    messagingSenderId: '905902648481',
    projectId: 'chat-b3165',
    storageBucket: 'chat-b3165.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgz7JtCkjWu9nmhO9QgZMu3BQd_WjFcTw',
    appId: '1:905902648481:ios:890ae62364eb59b782d4e0',
    messagingSenderId: '905902648481',
    projectId: 'chat-b3165',
    storageBucket: 'chat-b3165.appspot.com',
    iosClientId: '905902648481-stcevdd8isc2b17fu4jeo7ant146dtct.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgz7JtCkjWu9nmhO9QgZMu3BQd_WjFcTw',
    appId: '1:905902648481:ios:890ae62364eb59b782d4e0',
    messagingSenderId: '905902648481',
    projectId: 'chat-b3165',
    storageBucket: 'chat-b3165.appspot.com',
    iosClientId: '905902648481-stcevdd8isc2b17fu4jeo7ant146dtct.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat',
  );
}