import 'package:get/get.dart';

/// @class : SplashController
/// @description :启动页 控制器层
class SplashController extends GetxController {
  ///用来控制动画的状态
  double opacityLevel = 0.0;

  @override
  void onInit() {
    super.onInit();
    lazyInitAnim();
  }

  lazyInitAnim() {
    Future.delayed(const Duration(milliseconds: 200), () {
      opacityLevel = 1.0;
      update();
    });
  }
}
