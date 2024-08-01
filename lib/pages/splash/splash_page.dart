import 'package:flutter/material.dart';
import 'package:txtshow/pages/splash/splash_anim_widget.dart';
import 'package:txtshow/res/r.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///预缓存背景图片
    precacheImage(const AssetImage(R.assetsImagesLoginBackground), context);
    return const Scaffold(
        backgroundColor: Colors.white, body: SplashAnimWidget());
  }
}
