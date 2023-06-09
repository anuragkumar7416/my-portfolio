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
    apiKey: 'AIzaSyDov7b8ZU3LqeWO9LemnG8UkyTKtCelWYg',
    appId: '1:459811806341:web:f34cd4d88869c6dc1cddec',
    messagingSenderId: '459811806341',
    projectId: 'anuragkumar-287b4',
    authDomain: 'anuragkumar-287b4.firebaseapp.com',
    storageBucket: 'anuragkumar-287b4.appspot.com',
    measurementId: 'G-L0NHP8J5GW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuy_8FUm1UGNsnIVHj6GtvzKBZk3t8LVk',
    appId: '1:459811806341:android:9503cbcf98717e0e1cddec',
    messagingSenderId: '459811806341',
    projectId: 'anuragkumar-287b4',
    storageBucket: 'anuragkumar-287b4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPiRXdHk_yc0ec9Ythl7HqB8AbhuWHWfI',
    appId: '1:459811806341:ios:af070c6c307842f61cddec',
    messagingSenderId: '459811806341',
    projectId: 'anuragkumar-287b4',
    storageBucket: 'anuragkumar-287b4.appspot.com',
    iosClientId: '459811806341-hulhq70do49vih8u5k4sh236vjv8e7sv.apps.googleusercontent.com',
    iosBundleId: 'com.example.portfolio',
  );
}
