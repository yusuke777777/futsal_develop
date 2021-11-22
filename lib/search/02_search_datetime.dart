import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';


class SearchDateTimes extends StatefulWidget {
  @override
  _SearchDateTimesState createState() => _SearchDateTimesState();
}

class _SearchDateTimesState extends State<SearchDateTimes> {
  String batolDateTime = "選択してください";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2FFE4),
      body:
      Column(
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
                  child:Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.search,color: Colors.white),
                            TextButton(
                              child: Text(
                                batolDateTime,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                showDatePicker(
                                    context: context,
                                    locale:
                                    const Locale("ja"),
                                    initialDate:
                                    DateTime.now(),
                                    firstDate:
                                    DateTime(2021),
                                    lastDate:
                                    DateTime(2050))
                                    .then((date) {
                                  setState(() {
                                    DateFormat outoutFormat = DateFormat('yyyy年M月d日');
                                    batolDateTime = outoutFormat.format(date!);
                                  });
                                });
                              },
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
        ],
      ),
    );
  }
}