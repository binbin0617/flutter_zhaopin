import 'package:flutter/material.dart';

import 'child/AttachmentResume.dart';
import 'child/MyDelivery.dart';
import 'child/PositionCollection.dart';
import 'child/SubscriptionPosition.dart';

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    /**
     * 头部布局
     */
    Widget head = new Container(
      height: 100,
      color: Colors.blue,
      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      child: new Row(
        children: <Widget>[
          new ClipOval(
            child: new Image.asset(
              "images/ic_head.jpg",
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 3,
            child: new Container(
              padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "董斌斌",
                    style: new TextStyle(fontSize: 22, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  new Container(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: new Text(
                      "3年工作经验/大专/24岁",
                      style: new TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: new Container(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              decoration: new BoxDecoration(
                color: Colors.amberAccent, // 底色
                borderRadius: new BorderRadius.horizontal(
                    left: Radius.elliptical(50, 50)), // 也可控件一边圆角大小
              ),
              height: 35,
              child: new Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "100分  >",
                    style: new TextStyle(fontSize: 11, color: Colors.black45),
                  ),
                  new Text(
                    "在线简历",
                    style: new TextStyle(fontSize: 11, color: Colors.black45),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
    /**
     * 下面的四个分类
     */
    Widget fenlei = new Container(
        height: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/ic_head_back.jpg"),
                fit: BoxFit.fill)),
        child: new Container(
          margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
          decoration: new BoxDecoration(
            color: Colors.white, // 底色
            borderRadius:
                new BorderRadius.all(Radius.circular(10)), // 也可控件一边圆角大小
          ),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.book,
                      color: Colors.blue,
                      size: 30,
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: new Text("附件简历"),
                    )
                  ],
                ),
                onTap: (){
                  print("我被点击了");
                  Navigator.push(context,
                      new MaterialPageRoute(
                          builder: (
                              context) => new AttachmentResume()));
                },
              ),
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      color: Colors.blue,
                      size: 30,
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: new Text("我的投递"),
                    )
                  ],
                ),
                onTap: (){
                  print("我被点击了");
                  Navigator.push(context,
                      new MaterialPageRoute(
                          builder: (
                              context) => new MyDelivery()));
                },
              ),
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.table_chart,
                      color: Colors.blue,
                      size: 30,
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: new Text("订阅职位"),
                    )
                  ],
                ),
                onTap: (){
                  print("我被点击了");
                  Navigator.push(context,
                      new MaterialPageRoute(
                          builder: (
                              context) => new SubscriptionPosition()));
                },
              ),
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.blue,
                      size: 30,
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: new Text("职位收藏"),
                    )
                  ],
                ),
                onTap: (){
                  print("我被点击了");
                  Navigator.push(context,
                      new MaterialPageRoute(
                          builder: (
                              context) => new PositionCollection()));
                },
              ),
            ],
          ),
        ));

    /**
     * 最下面的列表
     */

    Widget liebiao = new Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      decoration: new BoxDecoration(
        color: Colors.white, // 底色
        borderRadius: new BorderRadius.all(Radius.circular(10)), // 也可控件一边圆角大小
      ),
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30,20),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.tab),
                  Expanded(
                    child: Text(
                      "    求职意向",
                      style: new TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Text(
                    "暂时不换工作  >",
                    style: new TextStyle(
                      fontSize: 12,
                      color: Colors.black26
                    ),
                  ),
                ],
              )),
          new Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30,20),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.schedule),
                  Expanded(
                    child: Text(
                      "    隐私设置",
                      style: new TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Text(
                    ">",
                    style: new TextStyle(
                        fontSize: 12,
                        color: Colors.black26
                    ),
                  ),
                ],
              )),
          new Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30,20),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.account_balance_wallet),
                  Expanded(
                    child: Text(
                      "    我的钱包",
                      style: new TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Text(
                    ">",
                    style: new TextStyle(
                        fontSize: 12,
                        color: Colors.black26
                    ),
                  ),
                ],
              )),
          new Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30,20),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.swap_horizontal_circle),
                  Expanded(
                    child: Text(
                      "    切换身份",
                      style: new TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Text(
                    "切换至我要招人  >",
                    style: new TextStyle(
                        fontSize: 12,
                        color: Colors.black26
                    ),
                  ),
                ],
              )),
          new Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30,20),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.settings),
                  Expanded(
                    child: Text(
                      "    设置",
                      style: new TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Text(
                    ">",
                    style: new TextStyle(
                        fontSize: 12,
                        color: Colors.black26
                    ),
                  ),
                ],
              )),
          new Container(
              padding: EdgeInsets.fromLTRB(30, 20, 30,20),
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Icon(Icons.settings_input_svideo),
                  Expanded(
                    child: Text(
                      "    反馈与帮助",
                      style: new TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    flex: 1,
                  ),
                  Text(
                    ">",
                    style: new TextStyle(
                        fontSize: 12,
                        color: Colors.black26
                    ),
                  ),
                ],
              )),
        ],
      ),
    );

    return new ListView(
      children: <Widget>[
        head,
        fenlei,
        liebiao,
      ],
    );
  }
}
