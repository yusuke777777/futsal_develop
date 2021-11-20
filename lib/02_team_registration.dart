import 'package:flutter/material.dart';
import '02_home.dart';

class TeamR extends StatefulWidget {
  @override
  _TeamRState createState() => _TeamRState();
}

class _TeamRState extends State<TeamR> {
  var teamIdCtl = TextEditingController();
  var teamNameCtl = TextEditingController();
  var teamPassWord = TextEditingController();
  var memberNameCtl = TextEditingController();
  var levelCtl = TextEditingController();
  var activeLocationCtl = TextEditingController();
  var missionCtl = TextEditingController();
  var addressCtl = TextEditingController();
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
                controller: teamIdCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'チームID',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                controller: teamNameCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'チーム名',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                controller: memberNameCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '所属メンバ',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                controller: levelCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'チームレベル',//プルダウン＆補足説明
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                controller: activeLocationCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '主な活動場所',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                controller: missionCtl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'チーム目標',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                controller: addressCtl,
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