import 'package:chatapp/View/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splashScreen',
    getPages: [
      GetPage(name: '/splashScreen', page: () => SplashScreen()),
    ],
  ));
}
