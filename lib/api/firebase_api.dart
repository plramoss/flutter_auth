import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_auth/main.dart';

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

    // initialize further settings for push notification
    initPushNotifications();
  }

// function to handle received messages
  void handleMessage(RemoteMessage? message) {
    // if the message is null, do nothing
    if (message == null) return;

    // navigate to new screen when message is received and user taps notification
    navigatorKey.currentState
        ?.pushNamed('/notification_screen', arguments: message);
  }

  // function to initialize foreground and background settings
  Future initPushNotifications() async {
    // handle notification if the app was terminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    // attach event listeners for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}