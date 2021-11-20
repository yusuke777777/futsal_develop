import 'package:flutter/material.dart';
import '02_home.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}


class _SettingState extends State<Setting> {
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
                  labelText: 'チーム名',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '所属メンバ',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'チームレベル',//プルダウン＆補足説明
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '主な活動場所',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'チーム目標',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '連絡先',
                ),
              )
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                child: Text('登録'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage()));
                }
            ),
          ),
        ],
      ),
    );
  }
}