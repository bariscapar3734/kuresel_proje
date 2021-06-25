import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kureselproje_app/screens/aboutUs/aboutUs_contents/aboutUs_OneTabs.dart';
import 'package:kureselproje_app/screens/aboutUs/aboutUs_contents/aboutUs_ThreeTabs.dart';
import 'package:kureselproje_app/screens/aboutUs/aboutUs_contents/aboutUs_TwoTabs.dart';

class BooksTopTabs extends StatefulWidget {
  int colorVal;
  BooksTopTabs(this.colorVal);
  _BooksTopTabsState createState() => _BooksTopTabsState();
}

class _BooksTopTabsState extends State<BooksTopTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xff990099;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Color(0xff990099),
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.book,
                    color: _tabController.index == 0
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Hakkımızda',
                    style: TextStyle(
                        color: _tabController.index == 0
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.headphones,
                    color: _tabController.index == 1
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Misyon',
                    style: TextStyle(
                        color: _tabController.index == 1
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.cloudsmith,
                    color: _tabController.index == 2
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Vizyon',
                    style: TextStyle(
                        color: _tabController.index == 2
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Hakkimizda(),
            Misyon(),
            Vizyon(),
          ],
        ),
      ),
    );
  }
}
