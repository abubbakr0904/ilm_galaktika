import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:ilm_galaktika/data/local/storage/local_storage.dart';
import 'package:ilm_galaktika/services/local_notification/local_notification.dart';

import 'app/app.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint(
      "BACKGROUND MODE DA PUSH NOTIFICATION KELDI:${message.notification!.title}");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await configureLocalTimeZone();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  LocalNotificationService.localNotificationService.init();

  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  await StorageRepository.init();
  bool isOnNotification = StorageRepository.getBool(key: "is_valid_notification");
  if (isOnNotification) {
    FirebaseMessaging.instance.subscribeToTopic("news");
    StorageRepository.setBool(key: "is_valid_notification", value: true);
  }
  runApp(const App());
}
