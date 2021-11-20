import 'package:flutter/material.dart';
import '02_home.dart';


class OpponentList extends StatefulWidget {
  @override
  _OpponentListState createState() => _OpponentListState();
}


class _OpponentListState extends State<OpponentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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