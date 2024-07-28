# TXT 文件阅读器

1. 显示某个 TEXT 文件
   开发目录
   SearchItem
   ==> List<ChapterItem> chapters
   ==> id 时间戳
   ChapterItem
   ==> name 标题 url "0.txt" 文件名

2. 从 assets 导入数据库文件 novel.db

    splash

3. 导入 txt 文件 分割成小文件

    sqlite 数据库 + 文件保存

    数据库 txt

    novel 表

    novelId 自增 title 名字 addTime 添加时间 时间戳

    chapter 章表
    chapterId 自增 novelId /上级 id sid 排序号 title 章名
