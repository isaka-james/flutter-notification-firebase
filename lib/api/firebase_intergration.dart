import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:notification/main.dart';

class FirebaseIntergration{
  final _firebaseMsg = FirebaseMessaging.instance;

  Future<void> initNotify() async{
    await _firebaseMsg.requestPermission();

    final FmTokens = await _firebaseMsg.getToken();

    print('Fmt Token: $FmTokens');

    initPushNotification();
  }

  void handleMessage(RemoteMessage? message){
    if(message==null) return;

    navigatorKey.currentState?.pushNamed('/notification',arguments: message);
  }

  void initPushNotification() async{

    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}