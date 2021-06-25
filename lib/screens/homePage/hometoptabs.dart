import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kureselproje_app/screens/homePage/homePage_contents/homeFourTabs.dart';
import 'package:kureselproje_app/screens/homePage/homePage_contents/homeSixTabs.dart';
import 'package:kureselproje_app/screens/homePage/homePage_contents/homeTwoTabs.dart';
import 'homePage_Contents/homeOneTabs.dart';
import 'homePage_contents/homeEightTabs.dart';
import 'homePage_contents/homeFiveTabs.dart';
import 'homePage_contents/homeNineTabs.dart';
import 'homePage_contents/homeSevenTabs.dart';
import 'homePage_contents/homeThreeTabs.dart';

// ignore: must_be_immutable
class HomeTopTabs extends StatefulWidget {
  HomeTopTabs(this.colorVal);
  int colorVal;

  _HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<HomeTopTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 9);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xFF810000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Color(0xFF810000),
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.compass,
                    color: _tabController.index == 0
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Sizin İçin',
                    style: TextStyle(
                        color: _tabController.index == 0
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartBar,
                    color: _tabController.index == 1
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Küresel Ateş Gücü',
                    style: TextStyle(
                        color: _tabController.index == 1
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.shapes,
                    color: _tabController.index == 2
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Bölgeler',
                    style: TextStyle(
                        color: _tabController.index == 2
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidBookmark,
                    color: _tabController.index == 3
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('İnsan Gücü',
                    style: TextStyle(
                        color: _tabController.index == 3
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidStar,
                    color: _tabController.index == 4
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Ekipman',
                    style: TextStyle(
                        color: _tabController.index == 4
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.lockOpen,
                    color: _tabController.index == 5
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Finans',
                    style: TextStyle(
                        color: _tabController.index == 5
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidBookmark,
                    color: _tabController.index == 6
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Lojistik',
                    style: TextStyle(
                        color: _tabController.index == 6
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidStar,
                    color: _tabController.index == 7
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Doğal Kaynaklar',
                    style: TextStyle(
                        color: _tabController.index == 7
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.lockOpen,
                    color: _tabController.index == 8
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Coğrafya',
                    style: TextStyle(
                        color: _tabController.index == 8
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            OneTabs(),
            TwoTabs(0xFF810000),
            ThreeTabs(0xFF810000),
            FourTabs(0xFF810000),
            FiveTabs(0xFF810000),
            SixTabs(0xFF810000),
            SevenTabs(0xFF810000),
            EightTabs(0xFF810000),
            NineTabs(0xFF810000),
          ],
        ),
      ),
    );
  }
}
