import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kureselproje_app/screens/settings/settings_contents/setting_OneTabs.dart';

class MusicTopTabs extends StatefulWidget {
  int colorVal;
  MusicTopTabs(this.colorVal);
  _MusicTopTabsState createState() => _MusicTopTabsState();
}

class _MusicTopTabsState extends State<MusicTopTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 1);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xff2196f3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Color(0xff2196f3),
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(FontAwesomeIcons.compass,
                    color: _tabController.index == 0
                        ? Color(widget.colorVal)
                        : Colors.grey),
                child: Text('Ülke Verisi Ekle',
                    style: TextStyle(
                        color: _tabController.index == 0
                            ? Color(widget.colorVal)
                            : Colors.grey)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Home(),
          ],
        ),
      ),
    );
  }
}
