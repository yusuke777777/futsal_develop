import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:futsal_develop/common/01_level_list.dart';
import 'package:intl/intl.dart';
import '../subscription/02_subscription.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SearchLevel extends StatefulWidget {
  @override
  _SearchLevelState createState() => _SearchLevelState();
}

class _SearchLevelState extends State<SearchLevel> {
  final Stream<QuerySnapshot> _batolStream =
      FirebaseFirestore.instance.collection('BATOL_TBL').snapshots();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.search, color: Colors.white),
                            Container(
                              child: LevelListGet(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            // StreamBuilder
            // 非同期処理の結果を元にWidgetを作れる
            child: StreamBuilder<QuerySnapshot>(
                stream: _batolStream,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Text("Loading");
                  }
                  return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      return
                        Card(child:ListTile(
                        title: Text(data['TEAM_NAME'],style: TextStyle(color: Color(0xFF3CB371),fontSize: 20),),
                        subtitle: Text(data['BATOL_DATE']),
                      ),);
                    }).toList(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
