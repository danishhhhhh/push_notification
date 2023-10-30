import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  final _firebase = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebase.requestPermission();

    final token = await _firebase.getToken();
    print("Token Device : " + token.toString());
  }
}