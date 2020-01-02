import 'package:flutter/material.dart';
import 'package:flutter_app/page/mine/child/MyDelivery.dart';
import 'package:flutter_app/page/mine/child/PositionCollection.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    /**
     * 上面的三个分类
     */
    Widget feilei = new Container(
      height: 130,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/ic_head_back.jpg"), fit: BoxFit.fill)),
      child: new Container(
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(Radius.circular(10))),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Container(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.watch_later,
                      size: 50,
                      color: Colors.blue,
                    ),
                    Text("我的投递")
                  ],
                ),
                onTap: () {
                  print("点我干什么");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyDelivery()));
                },
              ),
            ),
            new Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.watch_later,
                  size: 50,
                  color: Colors.orange,
                ),
                Text("谁看过我")
              ],
            ),
            new Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.watch_later,
                  size: 50,
                  color: Colors.redAccent,
                ),
                Text("聊出好机会")
              ],
            )
          ],
        ),
      ),
    );

    /**
     * 中间全部沟通
     */
    Widget goutong = new Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: EdgeInsets.fromLTRB(13, 13, 13, 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(Radius.circular(10)),
      ),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Text("全部沟通",
              style: new TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          new Icon(Icons.arrow_drop_down)
        ],
      ),
    );

    /**
     * 聊天信息列表
     */
    Widget message = new Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: new Column(
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.fromLTRB(10, 8, 0, 8),
                child: new Icon(
                  Icons.settings_input_svideo,
                  color: Colors.orange,
                  size: 55,
                ),
              ),
              Expanded(
                child: new Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            "通知",
                            style: new TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          new Text(
                            "今天09:20",
                            textAlign: TextAlign.right,
                            style: new TextStyle(
                                fontSize: 12, color: Colors.black54),
                          )
                        ],
                      ),
                      new Container(
                        margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: new Text(
                          "互联网岗位薪酬揭秘",
                          style: new TextStyle(color: Colors.black54),
                        ),
                      )
                    ],
                  ),
                ),
                flex: 1,
              )
            ],
          ),
          new Container(
            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
            color: Colors.black12,
            height: 0.5,
          )
        ],
      ),
    );

    return new ListView(
      children: <Widget>[
        feilei,
        goutong,
        message,
        message,
        message,
        message,
        message,
        message,
      ],
    );
  }
}
