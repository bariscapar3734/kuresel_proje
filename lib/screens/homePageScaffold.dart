import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kureselproje_app/screens/aboutUs/bookstoptabs.dart';
import 'package:kureselproje_app/screens/countries/countrytoptabs.dart';
import 'package:kureselproje_app/screens/settings/settingstoptabs.dart';
import 'homePage/hometoptabs.dart';

class homePage_duzen extends StatefulWidget {
  _homePage_duzenState createState() => _homePage_duzenState();
}

Color PrimaryColor = Color(0xFF810000);

class _homePage_duzenState extends State<homePage_duzen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: PrimaryColor,
            title: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: _GooglePlayAppBar(),
            ),
            bottom: buildTabBar(),
          ),
          body: TabBarView(
            children: [
              HomeTopTabs(0xFF810000),
              CountryTopTabs(0xffff5722),
              CountryTopTabs(0xff3f51b5),
              BooksTopTabs(0xff9c27b0),
              MusicTopTabs(0xff2196f3),
            ],
          )),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      isScrollable: true,
      indicatorColor: Color(0xFFeeebdd),
      indicatorWeight: 2.0,
      onTap: (index) {
        setState(() {
          switch (index) {
            case 0:
              PrimaryColor = Color(0xFF810000);
              break;
            case 1:
              PrimaryColor = Color(0xff3f51b5);
              break;
            case 2:
              PrimaryColor = Color(0xffe91e63);
              break;
            case 3:
              PrimaryColor = Color(0xff9c27b0);
              break;
            case 4:
              PrimaryColor = Color(0xff2196f3);
              break;
            default:
          }
        });
      },
      tabs: <Widget>[
        MyTabWidget(
          baslik: "ANASAYFA",
        ),
        MyTabWidget(
          baslik: "ÜLKELER",
        ),
        MyTabWidget(
          baslik: "GALERİ",
        ),
        MyTabWidget(
          baslik: "HAKKIMIZDA",
        ),
        MyTabWidget(
          baslik: "AYARLAR",
        ),
      ],
    );
  }
}

class MyTabWidget extends StatelessWidget {
  final String baslik;
  MyTabWidget({this.baslik = "NULL"});
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        child: Text(
          baslik,
          style: TextStyle(color: Color(0xFFeeebdd), fontSize: 15.0),
        ),
      ),
    );
  }
}

Widget _GooglePlayAppBar() {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(FontAwesomeIcons.bars),
            onPressed: () {},
          ),
        ),
        Container(
          child: Text(
            'Google Play',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.microphone,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
