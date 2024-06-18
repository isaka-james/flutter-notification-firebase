import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:notification/api/firebase_intergration.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notification/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:notification/notificationpage/notification_screen.dart';
import 'package:notification/homepage/homepage_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseIntergration().initNotify();

  //FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext  context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomepageScreen(),
      navigatorKey: navigatorKey,
      routes: {
        // '/':(context) => HomepageScreen(),
        '/notification':(context) => NotificationScreen(),
      },
    );
  }
}