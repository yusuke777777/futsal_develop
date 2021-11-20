import 'package:flutter/material.dart';
import '02_home.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}


class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage()));
                }
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Text('ここはおすすめ表示させる')
          ),
        ],
      ),
    );
  }
}