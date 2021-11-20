import 'package:flutter/material.dart';
import '02_home.dart';


class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}


class _SubscriptionState extends State<Subscription> {
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
                  labelText: '希望日時',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'チーム名',//プルダウン＆補足説明
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'レベル',
                ),
              )
          ),
          Align(
              alignment: Alignment.center,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'フリースペース',
                ),
              )
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                child: Text('登録'),//登録完了しましたMSG表示後、ホーム画面に戻る
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