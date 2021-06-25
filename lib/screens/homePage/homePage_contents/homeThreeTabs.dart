import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kureselproje_app/models/home_two_data/index_0.dart';
import 'package:kureselproje_app/models/home_two_data/index_1.dart';

class ThreeTabs extends StatefulWidget {
  int colorVal;
  ThreeTabs(this.colorVal);

  _ThreeTabsState createState() => _ThreeTabsState();
}

class _ThreeTabsState extends State<ThreeTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 14);
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
      child: Padding(
        padding: EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
        child: innerNestedTabs(),
      ),
    );
  }

  Widget innerNestedTabs() {
    return DefaultTabController(
      length: 14,
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
                      Text("Afrika",
                          style: TextStyle(
                              color: _tabController.index == 0
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Asya",
                          style: TextStyle(
                              color: _tabController.index == 1
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Asya Pasifik",
                          style: TextStyle(
                              color: _tabController.index == 2
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Balkanlar",
                          style: TextStyle(
                              color: _tabController.index == 3
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Orta Amerika",
                          style: TextStyle(
                              color: _tabController.index == 4
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Avrupa",
                          style: TextStyle(
                              color: _tabController.index == 5
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Doğu Avrupa",
                          style: TextStyle(
                              color: _tabController.index == 6
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Körfez Güçleri",
                          style: TextStyle(
                              color: _tabController.index == 7
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Latin Amerika",
                          style: TextStyle(
                              color: _tabController.index == 8
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Orta Doğu",
                          style: TextStyle(
                              color: _tabController.index == 9
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Kuzey Amerika",
                          style: TextStyle(
                              color: _tabController.index == 10
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("İskandinavya",
                          style: TextStyle(
                              color: _tabController.index == 11
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Güney Amerika",
                          style: TextStyle(
                              color: _tabController.index == 12
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Güneydoğu Asya",
                          style: TextStyle(
                              color: _tabController.index == 13
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
