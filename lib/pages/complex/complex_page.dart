import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:txtshow/res/colors.dart';
import 'package:txtshow/res/strings.dart';
import 'package:txtshow/res/style.dart';

class ComplexPage extends StatefulWidget {
  const ComplexPage({super.key});

  @override
  State<ComplexPage> createState() => _ComplexPageState();
}

class _ComplexPageState extends State<ComplexPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            top: true,
            child: Column(children: [
              Row(children: [
                Container(
                  alignment: Alignment.topLeft,

                  ///导航栏
                  child: TabBar(
                    isScrollable: true,
                    labelColor: ColorStyle.color_24CF5F,
                    unselectedLabelColor: ColorStyle.color_B8C0D4,
                    controller: tabController,
                    labelStyle: Styles.style_FE8C28_24_bold,
                    unselectedLabelStyle: Styles.style_FFAE2E_16,
                    tabs: [
                      Tab(
                        text: StringStyles.tabHome.tr,
                      ),
                      Tab(
                        text: StringStyles.tabSquare.tr,
                      ),
                      Tab(
                        text: StringStyles.tabAsk.tr,
                      )
                    ],
                  ),
                )
              ])
            ])));
  }
}
