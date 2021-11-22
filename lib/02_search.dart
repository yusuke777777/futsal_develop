import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '00_admob_baner.dart';
import '02_home.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}


class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2FFE4),
      appBar: AppBar(title: Text('対戦相手を探す'),),
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
                title: Text('利用規約同意書',style: TextStyle(color: Colors.black54)),
                // onTap: _manualURL,
              ),
              ListTile(
                title: Text('アプリ操作手順書',style: TextStyle(color: Colors.black54)),
                // onTap: _FAQURL,
              )
            ],
          )
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10.0)),
          AdBanner(size: AdSize.banner),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '日時',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '場所',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ランク',//プルダウン＆補足説明
                ),
              )
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                child: Text('検索'),
                onPressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => HomePage()));
                }
            ),
          ),
          FloatingActionButton.extended(
            icon: Icon(Icons.search),
            label: Text('対戦チームを検索'),
            backgroundColor: const Color(0xFFFF9426),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}