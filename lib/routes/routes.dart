import 'package:get/get.dart';
import 'package:txtshow/pages/splash/splash_binding.dart';
import 'package:txtshow/pages/splash/splash_page.dart';

/// @class : Routes
/// @description :页面管理
abstract class Routes {
  ///入口模块
  static const String splashPage = '/splash';

  static final routePage = [
    GetPage(
        name: splashPage,
        page: () => const SplashPage(),
        binding: SplashBinding())
  ];
}
