import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:txtshow/get/get_common_view.dart';
import 'package:txtshow/pages/splash/splash_controller.dart';
import 'package:txtshow/res/r.dart';
import 'package:txtshow/res/strings.dart';
import 'package:txtshow/res/style.dart';

/// @class : SplashAnimWidget
/// @description :动画Widget
class SplashAnimWidget extends GetCommonView<SplashController> {
  const SplashAnimWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        onEnd: () {
          //跳转页面
          // Get.offNamed(SpUtil.getUserInfo() == null
          //     ? Routes.loginPage
          //     : Routes.homePage);
        },
        opacity: controller.opacityLevel, //这个变化
        duration: const Duration(milliseconds: 2000),
        child: Container(
          margin: const EdgeInsets.only(top: 120),
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                R.assetsImagesApplication,
                fit: BoxFit.fitWidth,
                width: 110,
                height: 110,
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Text(
                  StringStyles.appName.tr,
                  style: Styles.style_black_36,
                ),
              ),
            ],
          ),
        ));
  }
}
