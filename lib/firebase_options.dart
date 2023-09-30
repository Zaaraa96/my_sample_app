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
    apiKey: 'AIzaSyAAvwTyyCEgTO9mrW4KQ2j-EDRs0bb8x4Q',
    appId: '1:61256537244:web:3d295755875fbadd58c959',
    messagingSenderId: '61256537244',
    projectId: 'my-sample-app-33124',
    authDomain: 'my-sample-app-33124.firebaseapp.com',
    storageBucket: 'my-sample-app-33124.appspot.com',
    measurementId: 'G-X9RNH8TV3R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUBj6XoTAucjy_Hz14XzZE064FceZuet0',
    appId: '1:61256537244:android:b5caf1f4fd8cce9f58c959',
    messagingSenderId: '61256537244',
    projectId: 'my-sample-app-33124',
    storageBucket: 'my-sample-app-33124.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5y9z2aYDaFfS9mLexnZ7PuDp9mMEseh8',
    appId: '1:61256537244:ios:519be26c72a0793658c959',
    messagingSenderId: '61256537244',
    projectId: 'my-sample-app-33124',
    storageBucket: 'my-sample-app-33124.appspot.com',
    iosBundleId: 'com.zara.mySampleApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA5y9z2aYDaFfS9mLexnZ7PuDp9mMEseh8',
    appId: '1:61256537244:ios:030108cedff2daef58c959',
    messagingSenderId: '61256537244',
    projectId: 'my-sample-app-33124',
    storageBucket: 'my-sample-app-33124.appspot.com',
    iosBundleId: 'com.zara.mySampleApp.RunnerTests',
  );
}
