import 'dart:ui';

import 'package:flutter/material.dart';

/// 我的投递界面
class MyDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //近三天收藏字
    Widget headText = new Container(
      padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
      child: new Text("近三天收藏",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );

    Widget childList = new Container(
      decoration: new BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12, offset: Offset(0.5, 0.5),

              ///模糊阴影半径
              blurRadius: 2,
            ),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(-0.5, -0.5),
                blurRadius: 2),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.5, -0.5),
                blurRadius: 2),
            BoxShadow(
                color: Colors.black12, offset: Offset(-0.5, 0.5), blurRadius: 2)
          ],
          borderRadius: new BorderRadius.all(Radius.circular(3.0))),
      margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 10),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      "安卓开发工程师",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    new Text(
                      "9-18K",
                      textAlign: TextAlign.right,
                      style:
                          new TextStyle(color: Colors.redAccent, fontSize: 16),
                    )
                  ],
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "杭州 | 四季青 | 3-5年 | 大专",
                        style: new TextStyle(fontSize: 12),
                      ),
                      new Text(
                        "12月30号",
                        style:
                            new TextStyle(color: Colors.black38, fontSize: 12),
                      )
                    ],
                  ),
                ),
                new Container(
                  alignment: Alignment.centerLeft,
                  child: new Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
                    decoration: new BoxDecoration(
                        color: Color(0x0D000000),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: new Text(
                      "Android",
                      textAlign: TextAlign.left,
                      style: new TextStyle(color: Colors.black45, fontSize: 12),
                    ),
                  ),
                ),
                new Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: new Row(
                    children: <Widget>[
                      new ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        child: new Image.asset(
                          "images/ic_head.jpg",
                          width: 40,
                          height: 40,
                        ),
                      ),
                      new Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text("控课信息"),
                            new Text(
                              "B轮 | 50-150人 | 移动互联网,硬件",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(4, 5, 4, 0),
            child: new Row(),
            height: 0.5,
            color: Colors.black12,
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text(
                  "取消收藏",
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
                new Container(
                  height: 15,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: new Column(),
                  width: 0.5,
                  color: Colors.black12,
                ),
                new Text("投递简历",
                    style: TextStyle(fontSize: 16, color: Colors.green))
              ],
            ),
          )
        ],
      ),
    );

    //历史收藏字
    Widget centerText = new Container(
      padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
      child: new Text("历史收藏",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );

    //没有更多了
    Widget endText = new Container(
      padding: EdgeInsets.fromLTRB(15, 25, 0, 40),
      child: new Text(
        "没有更多了",
        style: TextStyle(fontSize: 12, color: Colors.black45),
        textAlign: TextAlign.center,
      ),
    );

    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.5,
        title: new Text(
          "收藏",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
//        leading: Icon(Icons.arrow_back_ios),
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          new Container(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text(
                  "清空",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          headText,
          childList,
          childList,
          centerText,
          childList,
          childList,
          endText
        ],
      ),
    );
  }
}
