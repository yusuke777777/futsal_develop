import 'package:flutter/material.dart';
import '02_team_registration.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {
  var teamIdCtl = TextEditingController();
  var teamPassWord = TextEditingController();

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
                controller: teamPassWord,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'パスワード8文字以上',
                ),
              )
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                child: Text('ログイン'),
                onPressed: () {
                  //認証機能を入れる予定
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => TeamR()));
                }
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                child: Text('新規作成'),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => TeamR()));
                }
            ),
          ),
        ],
      ),
    );
  }
}