import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Curriculum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var imgs = [
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/945/20191212104637_350270.jpg",
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/616/20191211135535_914954.jpg",
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/945/20191210103322_881269.jpg",
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/1242/20191209110601_870183.jpg"
    ];

    Widget banner = new Container(
      height: 150,
      padding: EdgeInsets.all(15),
      child: new AspectRatio(
        aspectRatio: 2.85,
        child: new Swiper(
          itemBuilder: (BuildContext content, int index) {
            return new Image.network(
              imgs[index % imgs.length],
              fit: BoxFit.cover,
            );
          },
          itemCount: imgs.length,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: Colors.white70, // 其他点的颜色
                  activeColor: Colors.blue, // 当前点的颜色
                  space: 3 // 点与点之间的距离
                  )),
          loop: true,
          index: 1,
          autoplay: true,
        ),
      ),
    );

    Widget item = new Container(
      padding: EdgeInsets.fromLTRB(20,10,10,0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new SizedBox(
                width: 100,
                height: 160,
                child: new Image.asset("images/ic_kecheng.png"),
              ),
              Expanded(
                  child: new Container(
                padding: EdgeInsets.fromLTRB(20,0,0,0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      "数据结构精讲：从原理到实战",
                      style: new TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      textAlign: TextAlign.left,
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: new Text(
                        "Google资深工程师带你玩转数据结构",
                        style: new TextStyle(),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: new Text(
                        "蔡元楠|Google资深工程师",
                        style:
                            new TextStyle(color: Colors.black26, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          new Text(
                            "¥",
                            style: new TextStyle(
                                color: Colors.redAccent, fontSize: 14,height: 0),
                            textAlign: TextAlign.left,
                          ),
                          new Text(
                            "68",
                            style: new TextStyle(
                                color: Colors.redAccent,
                                fontSize: 29,
                                height: 0),
                            textAlign: TextAlign.end,
                          ),
                          new Container(
                            padding: EdgeInsets.fromLTRB(2, 0, 2, 2),
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            child: new Text(
                              "上新优惠",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 14),
                              textAlign: TextAlign.left,
                            ),
                            color: Colors.redAccent,
                          ),
                          Expanded(
                              child: new Text(
                            "476人购买",
                            style: new TextStyle(
                                color: Colors.black26, fontSize: 14,height: 0),
                            textAlign: TextAlign.right,
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              )),
            ],
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: new Row(),
            height: 0.5,
            color: Colors.black12,
          )
        ],
      ),
    );

    Widget xian = new Container(
      child: new Row(),
      height: 10,
      color: Colors.black12,
    );

    return new ListView(
      children: <Widget>[
        banner,
        xian,
        item,
        item,
        item,
        item,
        item,
        item,
        item,
        item,
        item,
        item,
        item,
      ],
    );
  }
}
