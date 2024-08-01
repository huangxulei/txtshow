import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:txtshow/pages/splash/splash_binding.dart';
import 'package:txtshow/pages/splash/splash_page.dart';
import 'package:txtshow/routes/routes.dart';
import 'package:txtshow/util/injection_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.init();
  runApp(GetMaterialApp(
    getPages: Routes.routePage,
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    defaultTransition: Transition.fade,
    initialBinding: SplashBinding(),
    home: const SplashPage(),
  ));
}
