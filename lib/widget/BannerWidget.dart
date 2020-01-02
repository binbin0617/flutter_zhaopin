import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//这是一个封装flutter_swiper的banner轮播组件
class BannerWidget extends StatefulWidget {
  List<String> imgList;
  var aspectRatio;
  var height;

  BannerWidget({
    List<String> imgPath,
    var aspectRatio,
    var height,
  })  : this.aspectRatio = aspectRatio,
        this.height = height,
        this.imgList = imgPath;

  @override
  State<StatefulWidget> createState() => BannerWidgetState();
}

class BannerWidgetState extends State<BannerWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
        height: widget.height,
        child: new AspectRatio(
            aspectRatio: widget.aspectRatio,
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  widget.imgList[index % widget.imgList.length],
                  fit: BoxFit.fill,
                );
              },
              itemCount: widget.imgList.length,
              pagination: new SwiperPagination(),
              loop: true,
              index: 1,
              //初始的下标位置
              autoplay: true, //是否自动播放
            )));
  }
}
