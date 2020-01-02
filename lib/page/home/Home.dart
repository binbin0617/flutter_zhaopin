import 'package:flutter/material.dart';
import 'package:flutter_app/widget/BannerWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //轮播
    List<String> imgList = [
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/945/20191212104637_350270.jpg",
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/616/20191211135535_914954.jpg",
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/945/20191210103322_881269.jpg",
      "https://static.bjx.com.cn/UserNew/AppFile/Carouse/1242/20191209110601_870183.jpg"
    ];
    //星星头条

    //广告
    Widget rowAvd = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Expanded(child: new Image.asset("images/ic_fast_feedback.png")),
        new Expanded(child: new Image.asset("images/ic_fast_feedback.png")),
        new Expanded(child: new Image.asset("images/ic_fast_feedback.png")),
      ],
    );

    //广告2
    Widget rowAvd2 = new Container(
      height: 207,
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Expanded(
            child: new AspectRatio(
                aspectRatio: 1.04, child: new Image.asset("images/ic_a.png")),
          ),
          new Expanded(
              child: new Column(
            children: <Widget>[
              Container(
                  height: 100,
                  child: new AspectRatio(
                      aspectRatio: 2.62,
                      child: new Image.asset("images/ic_b.png"))),
              Container(
                  height: 100,
                  child: new AspectRatio(
                      aspectRatio: 2.62,
                      child: new Image.asset("images/ic_c.png"))),
            ],
          ))
        ],
      ),
    );

    //item
    Widget item = new Container(
        padding: EdgeInsets.all(10),
        child: new Column(
          children: <Widget>[
            new Row(
              //这个属性是将当前row评分，并且child是最边上
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "值长",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                new Text("10-20万",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepOrange),
                    textAlign: TextAlign.right)
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  "广西南宁 | 大专 | 经验不限",
                  style: new TextStyle(color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
                new Text(
                  "今天",
                  style: new TextStyle(color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            new Row(
              children: <Widget>[
                new SizedBox(
                    width: 50,
                    height: 50,
                    child: new Image.asset("images/ic_company_logo.png")),
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      "北京火山动力有限公司",
                      style: new TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    new Text(
                      "外商独资 | 约150到200人 | 火力发电",
                      style: new TextStyle(color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              color: Colors.grey,
              height: 1,
            ),
          ],
        ));
    return new ListView(
      children: <Widget>[
        BannerWidget(imgPath: imgList, aspectRatio: 2.85, height: 120.0),
        rowAvd,
        rowAvd2,
        item,
        item,
        item,
        item,
        item,
        item,
        item,
        item,
        item
      ],
    );
  }
}
