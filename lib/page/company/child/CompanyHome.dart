import 'package:flutter/material.dart';
import 'package:flutter_app/widget/BannerWidget.dart';

//探秘视频
class CompanyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CompanyHomeState();
}

class CompanyHomeState extends State<CompanyHome> {
  List<String> imgList = [
    "http://ww4.sinaimg.cn/large/006uZZy8jw1faic21363tj30ci08ct96.jpg",
    "http://ww4.sinaimg.cn/large/006uZZy8jw1faic259ohaj30ci08c74r.jpg",
    "http://ww4.sinaimg.cn/large/006uZZy8jw1faic2b16zuj30ci08cwf4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        BannerWidget(imgPath: imgList,aspectRatio: 1.5,height: 300.0),
      ],
    );
  }
}
