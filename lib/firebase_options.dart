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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyALNylxDnR9rXTozxqOh3Tk2-2HFEUFpc4',
    appId: '1:304572792327:web:d4a115b41ea6b05419b4a2',
    messagingSenderId: '304572792327',
    projectId: 'taskapp-ce8e4',
    authDomain: 'taskapp-ce8e4.firebaseapp.com',
    storageBucket: 'taskapp-ce8e4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeayOUVjbFoxmnpyOajZtp7jM041cPWuM',
    appId: '1:304572792327:android:0d4f566086a2415019b4a2',
    messagingSenderId: '304572792327',
    projectId: 'taskapp-ce8e4',
    storageBucket: 'taskapp-ce8e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBB0kaMtjepaY_UF88eencz0LDzoKiJCXM',
    appId: '1:304572792327:ios:85d777957c61e82719b4a2',
    messagingSenderId: '304572792327',
    projectId: 'taskapp-ce8e4',
    storageBucket: 'taskapp-ce8e4.appspot.com',
    iosBundleId: 'com.example.taskapp',
  );
}
