import 'package:flutter/material.dart';
import 'package:flutter_auth/api/firebase_api.dart';
import 'package:flutter_auth/new_pages/home_page.dart';
// import 'package:flutter_auth/pages/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_auth/new_pages/notifications_page.dart';
import 'firebase_options.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: AuthPage(),
      home: const NewHomePage(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen': (context) => const NotificationPage(),
      },
    );
  }
}
