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
    apiKey: 'AIzaSyAV9KWcZVkjwzwtj-O5iIT2sdtsR21B_CY',
    appId: '1:275374997637:web:9d02d921725a4e004129ec',
    messagingSenderId: '275374997637',
    projectId: 'alleazeinternship',
    authDomain: 'alleazeinternship.firebaseapp.com',
    storageBucket: 'alleazeinternship.appspot.com',
    measurementId: 'G-JX9353XYJL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCeqrwTVMubUtvEUkoXZyUucqEL9LaTrZM',
    appId: '1:275374997637:android:104819d101e237c84129ec',
    messagingSenderId: '275374997637',
    projectId: 'alleazeinternship',
    storageBucket: 'alleazeinternship.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAlu-FtjDzRXrU5Ia_FQC3Qg0gUHnusIHo',
    appId: '1:275374997637:ios:581fb8d9ea2f88ab4129ec',
    messagingSenderId: '275374997637',
    projectId: 'alleazeinternship',
    storageBucket: 'alleazeinternship.appspot.com',
    iosBundleId: 'com.example.alleazeInternship',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAlu-FtjDzRXrU5Ia_FQC3Qg0gUHnusIHo',
    appId: '1:275374997637:ios:581fb8d9ea2f88ab4129ec',
    messagingSenderId: '275374997637',
    projectId: 'alleazeinternship',
    storageBucket: 'alleazeinternship.appspot.com',
    iosBundleId: 'com.example.alleazeInternship',
  );
}
