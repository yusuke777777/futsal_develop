import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '00_admob_baner.dart';
import '02_home.dart';


class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}


class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2FFE4),
      appBar: AppBar(title: Text('履歴'),),
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10.0)),
              AdBanner(size: AdSize.banner),
              Padding(padding: EdgeInsets.only(top: 10.0)),
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
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}