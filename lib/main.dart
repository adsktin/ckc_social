import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_android/Bidings/application_biding.dart';
import 'package:social_android/UI/Auth/login_screen.dart';
import 'package:social_android/UI/Auth/register_screen.dart';
import 'package:social_android/UI/Auth/splash_screen.dart';
import 'package:social_android/UI/Home/home_screen.dart';
import 'package:social_android/UI/Widget/post_widget.dart';
import 'package:social_android/UI/system_color.dart';

import 'UI/tabbar.dart';

void main() {
  runApp(SocialCKC());
}

class SocialCKC extends StatelessWidget {
  const SocialCKC({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      title: 'CKC Social',
      theme: ThemeData(
        backgroundColor: AllcolorApp.backgroundColorApp,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      // initialBinding: DependenciesBinding(),
      home: Tabbar(),
      
      //  unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialBinding: ApplicationBiding(),
      unknownRoute:
          GetPage(name: '/notfound', page: () => const SplashScreen()),
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/login',
            page: () => LoginScreen(),
            binding: ApplicationBiding()),
        GetPage(
            name: '/register',
            page: () => RegisterScreen(),
            binding: ApplicationBiding()),
        GetPage(
            name: '/home', page: () => Home(), binding: ApplicationBiding()),
        GetPage(
            name: '/post',
            page: () => PostWidget(),
            binding: ApplicationBiding()),
      ],
    );
  }
}
