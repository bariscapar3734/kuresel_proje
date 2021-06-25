import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kureselproje_app/models/home_two_data/index_0.dart';
import 'package:kureselproje_app/models/home_two_data/index_1.dart';

class SevenTabs extends StatefulWidget {
  int colorVal;
  SevenTabs(this.colorVal);

  _SevenTabsState createState() => _SevenTabsState();
}

class _SevenTabsState extends State<SevenTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 6);
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
      length: 6,
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
                      Text("Havaalanları",
                          style: TextStyle(
                              color: _tabController.index == 0
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("İş Gücü",
                          style: TextStyle(
                              color: _tabController.index == 1
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Limanlar ve Terminaller",
                          style: TextStyle(
                              color: _tabController.index == 2
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Deniz Ticaret Gücü",
                          style: TextStyle(
                              color: _tabController.index == 3
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Demiryolu Gücü",
                          style: TextStyle(
                              color: _tabController.index == 4
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("Karayolu Kapsamı",
                          style: TextStyle(
                              color: _tabController.index == 5
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
              child: Center(child: Text('TOP RATED')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP RATED')),
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
              child: Center(child: Text('TRENDING')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP PAID')),
            ),
          ],
        ),
      ),
    );
  }
}
