import 'package:flutter/material.dart';
import 'package:flutter_app/bean/CompanyTitleBean.dart';
import 'package:flutter_app/page/company/child/CompanyRank.dart';
import 'package:flutter_app/page/company/child/CompanyHome.dart';
import 'package:flutter_app/page/company/child/CompanyList.dart';

class Company extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CompanyState();
}

class CompanyState extends State<Company> with SingleTickerProviderStateMixin {
  TabController tabController;
  List<CompanyTitleBean> tabList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabList = [
      new CompanyTitleBean('探秘视频', 0),
      new CompanyTitleBean('榜单', 1),
      new CompanyTitleBean('公司库', 2),
    ];
    tabController = new TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          key: Key("key_company_home_Column"),
          children: <Widget>[
            Container(
              height: 40.0,
              child: TabBar(
                key: Key("key_company_home_tabbar"),
                tabs: tabList.map((item) {
                  return Tab(text: item.title);
                }).toList(),
                isScrollable: false,
                controller: tabController,
                labelColor: Colors.deepOrange,
                unselectedLabelColor: Colors.black,
                labelStyle: new TextStyle(fontSize: 16.0),
              ),
            ),
            Expanded(
                child: TabBarView(
                    key: Key("key_company_home_tabbarView"),
                    controller: tabController,
                    children: [CompanyHome(), CompanyList(), CompanyRank()]))
          ],
        ));
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }
}

