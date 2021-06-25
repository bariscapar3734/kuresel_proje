import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kureselproje_app/models/home_two_data/index_0.dart';
import 'package:kureselproje_app/models/home_two_data/index_1.dart';

class FiveTabs extends StatefulWidget {
  int colorVal;
  FiveTabs(this.colorVal);

  _FiveTabsState createState() => _FiveTabsState();
}

class _FiveTabsState extends State<FiveTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 8);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xFF810000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffffffff),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
          child: innerNestedTabs(),
        ),
      ),
    );
  }

  Widget innerNestedTabs() {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        backgroundColor: Color(0xfffffff),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    labelPadding: EdgeInsets.all(10.0),
                    indicatorColor: Color(widget.colorVal),
                    indicatorWeight: 5.0,
                    tabs: [
                      Text("Uçak Filosu Gücü",
                          style: TextStyle(
                              color: _tabController.index == 0
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Avcı Uçağı Önleyici Gücü",
                          style: TextStyle(
                              color: _tabController.index == 1
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Saldırı Uçağı Gücü",
                          style: TextStyle(
                              color: _tabController.index == 2
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Askeri Eğitmen Uçak Gücü",
                          style: TextStyle(
                              color: _tabController.index == 3
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Özel Görev Uçağı Gücü",
                          style: TextStyle(
                              color: _tabController.index == 4
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Tanker Filoları",
                          style: TextStyle(
                              color: _tabController.index == 5
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Helikopter Filoları",
                          style: TextStyle(
                              color: _tabController.index == 6
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Saldırı Helikopterleri",
                          style: TextStyle(
                              color: _tabController.index == 7
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Center(child: Text('TRENDING')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP PAID')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TRENDING')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP PAID')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP RATED')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP RATED')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP RATED')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP RATED')),
            ),
          ],
        ),
      ),
    );
  }
}
