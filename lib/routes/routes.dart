import 'package:get/get.dart';
import 'package:txtshow/pages/home/home_page.dart';
import 'package:txtshow/pages/splash/splash_binding.dart';
import 'package:txtshow/pages/splash/splash_page.dart';

/// @class : Routes
/// @description :页面管理
abstract class Routes {
  ///入口模块
  static const String splashPage = '/splash';

  ///主页
  static const String homePage = '/home';

  static final routePage = [
    GetPage(
        name: splashPage,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    // GetPage(
    //     name: homePage, page: () => const HomePage(), binding: HomeBinding()),
  ];
}
