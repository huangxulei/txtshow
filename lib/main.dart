import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:text_composition/text_composition.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookName = "book name";
    // Global.prefs.containsKey(TextConfigKey) ? Global.prefs.getString(TextConfigKey) : {}
    final config = TextCompositionConfig();
    // 用法1：一个widget
    // final widget = TextCompositionWidget(config: config, paragraphs: <String>["段落"]);
    // 用法2：一个page
    return TextCompositionPage(
      controller: TextComposition(
        config: config,
        loadChapter: (index) => Future.delayed(Duration(seconds: 1)).then(
            (value) => List.generate(
                123 + math.Random().nextInt(34),
                (i) =>
                    "chapter $index, " +
                    "paragraph $i. " * math.Random().nextInt(12))),
        chapters: List.generate(1234, (i) => "chapter $i, chapter name"),
        percent: 0.000001,
        onSave: (TextCompositionConfig config, double percent) {
          // Global.prefs.setString(TextConfigKey, config);
          // searchItem.durContentIndex = (percent * NovelContentTotal).floor();
          print("load loadChapter : ");
          print("save config: $config");
          print("save percent: $percent");
        },
        name: bookName,
        //也可以自定义菜单顶栏底栏
        // menuBuilder: (textComposition) {
        //   return Container(
        //     child: Column(
        //       children: [
        //         AppBar(
        //           title: Text(bookName),
        //           actions: [
        //             TextButton(
        //               onPressed: () => showDialog(
        //                 context: context,
        //                 builder: (context) => AlertDialog(
        //                   content: Container(
        //                     width: 520,
        //                     child: Column(
        //                       mainAxisSize: MainAxisSize.min,
        //                       children: [
        //                         Text("书名：$bookName"),
        //                         SizedBox(height: 20),
        //                         Text("或者跳转详情页之类"),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               child: Text(
        //                 "书籍信息",
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //             ),
        //             SizedBox(width: 20),
        //             TextButton(
        //               child: Text(
        //                 "点我配置",
        //                 style: TextStyle(color: Colors.white),
        //               ),
        //               onPressed: () => showDialog(
        //                 context: context,
        //                 builder: (context) => AlertDialog(
        //                   contentPadding: EdgeInsets.zero,
        //                   content: Container(
        //                     width: 520,
        //                     child: Text("这是厕所,,,,,,,,"),
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             SizedBox(width: 20),
        //           ],
        //         ),
        //         Spacer(),
        //         //下面放底栏
        //       ],
        //     ),
        //   );
        // },
      ),
    );
  }
}

class NovelMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bgColor = Theme.of(context).canvasColor.withOpacity(0.97);
    final color = Theme.of(context).textTheme.bodyText1?.color;
    return Column(children: <Widget>[
      Spacer(),
      StatefulBuilder(builder: (BuildContext context, setState) {
        return Wrap(spacing: 10, children: [
          ElevatedButton(
            onPressed: () {
              //SpeakService.instance.addRate();
              setState(() {});
            },
            child: Text('加快'),
          ),
          ElevatedButton(
            onPressed: () {
              // SpeakService.instance.resetRate();
              setState(() {});
            },
            child: Text('恢复'),
          ),
          ElevatedButton(
            onPressed: () {
              // SpeakService.instance.minusRate();
              setState(() {});
            },
            child: Text('减慢'),
          ),
          // ElevatedButton(onPressed:   , child: Text('朗读')),
          // ElevatedButton(onPressed:  , child: Text('停止')),
          // ElevatedButton(onPressed: , child: Text('上页')),
          // ElevatedButton(onPressed: , child: Text('下页')),
        ]);
      })
    ]);
  }
}
