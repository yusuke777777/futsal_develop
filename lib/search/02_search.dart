import 'package:flutter/material.dart';
import '02_search_recommendation.dart';
import '02_search_level.dart';
import '02_search_location.dart';
import '02_search_datetime.dart';



class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}


class _SearchState extends State<Search> {
  final _tab = <Tab> [
    Tab( text:'おすすめ',),
    Tab( text:'日時'),
    Tab( text:'場所'),
    Tab( text:'レベル'),
  ];

  @override
  int _screen = 0;
  TabPage(int curPage){
    this._screen = curPage;
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _screen,
      length: _tab.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child:
          AppBar(
            title: Text("対戦相手を見つける",
                style: TextStyle(color: const Color(0xFFFFFFFF), fontSize: 18,)),
            iconTheme: const IconThemeData(
              color: const Color(0xFFFFFFFF),
            ),
            backgroundColor: const Color(0xFF3CB371),
            bottom: TabBar(
              tabs: _tab,
              labelColor: const Color(0xFFFFFFFF),
              unselectedLabelColor: const Color(0xFFFFFFFF),
              indicatorColor: const Color(0xFFFFFFFF),
            ),
          ),),
        drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 60.0,
                  child: DrawerHeader(
                    child: Text("メニュー"),
                    decoration: BoxDecoration(
                    ),
                  ),
                ),
                ListTile(
                  title: Text('操作手順書',style: TextStyle(color: const Color(
                      0xFF737373),)),
                  // onTap: _manualURL,
                ),
                ListTile(
                  title: Text('問い合わせ',style: TextStyle(color: const Color(
                      0xFF737373),)),
                  // onTap: _FAQURL,
                )
              ],
            )
        ),
        body: TabBarView(
          children: <Widget>[
            SearchRecommendation(),
            SearchDateTimes(),
            SearchLocation(),
            SearchLevel(),
          ],
        ),
      ),
    );
  }
}
