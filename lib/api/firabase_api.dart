import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  //create an instance of firebase messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  // function to initialize notifications
  Future<void> initNotifications() async {
    // request permission from user
    await _firebaseMessaging.requestPermission();

    // fetch the FCM token for the device
    final fcmToken = await _firebaseMessaging.getToken();

    // print the token (normally you would send to the server)
    print('token: $fcmToken');
  }

  // function to handle received messages

  // function to initialize foreground and background settings
}