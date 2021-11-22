import 'package:flutter/material.dart';

class SearchRecommendation extends StatefulWidget {
  @override
  _SearchRecommendationState createState() => _SearchRecommendationState();
}

class _SearchRecommendationState extends State<SearchRecommendation> {
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
          Align(
              alignment: Alignment.center,
              child: Text('ここはおすすめを表示させる')
          ),
        ],
      ),
    );
  }
}