
import 'package:coffee_app/presentation/home_screen/home_screen.dart';
import 'package:coffee_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

import 'core/app_export.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
  
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
    void changeStatusBarColor() {
  FlutterStatusbarcolor.setStatusBarColor(Color(0XFFFF045F)); // قم بتغيير هذا اللون بلون الـ AppBar المطلوب
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
  changeStatusBarColor();
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('========User is currently signed out!');
    } else {
      print('User is signed in');
    }
  });
   super.initState();
    
  }

  // ignore: override_on_non_overriding_member
  @override
  Widget build(BuildContext context) {
    
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale,


        //for setting localization strings
      fallbackLocale: Locale('ar', 'AR'),
       // locale: Locale('en', 'US'),
        title: 'coffee_app',
        home: FirebaseAuth.instance.currentUser == null? SignInScreen():HomeScreen(),
      
          initialBinding: InitialBindings(),
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
       

      );

      
    });
  
  



  }}
