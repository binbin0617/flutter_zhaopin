import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'curriculum/Curriculum.dart';
import 'home/Home.dart';
import 'mine/Mine.dart';
import 'company/Company.dart';
import 'news/News.dart';

void main() {
  runApp(new MyApp());
  if (Platform.isAndroid) {
    //沉浸式状态栏
    //写在组件渲染之后，是为了在渲染后进行设置赋值，覆盖状态栏，写在渲染之前对MaterialApp组件会覆盖这个值。
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '哈哈',
      home: Homes(),
    );
  }
}

class Homes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Homes> {
  int currentIndex = 0;
  final List<Widget> children = [
    HomePage(),
    Company(),
    News(),
    Curriculum(),
    Mine()
  ];
  final List<String> mTextlist = ['首页', '公司', '消息', '课程', ''];
  final List<BottomNavigationBarItem> list = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('首页'),
        backgroundColor: Colors.orange),
    BottomNavigationBarItem(
        icon: Icon(Icons.book),
        title: Text('公司'),
        backgroundColor: Colors.orange),
    BottomNavigationBarItem(
        icon: Icon(Icons.message),
        title: Text('消息'),
        backgroundColor: Colors.orange),
    BottomNavigationBarItem(
        icon: Icon(Icons.movie),
        title: Text('课程'),
        backgroundColor: Colors.orange),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        title: Text('我'),
        backgroundColor: Colors.orange)
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        title: Text(mTextlist[currentIndex]),
      ),
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: currentIndex,
          items: list),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
