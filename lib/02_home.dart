import 'package:flutter/material.dart';
import '02_team_registration.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 60.0,
                child: DrawerHeader(
                  child: Text("メニュー"),
                  decoration: BoxDecoration(
                  ),
                ),
              ),
              ListTile(
                title: Text('操作手順書',style: TextStyle(color: Colors.black54)),
              ),
              ListTile(
                title: Text('問い合わせ',style: TextStyle(color: Colors.black54)),
              )
            ],
          )
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_selectedIndex',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "作成"),
          BottomNavigationBarItem(icon: Icon(Icons.web), label: "検索"),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: "履歴"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "設定"),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Theme.of(context).disabledColor,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onTap,
      ),
    );
  }
}