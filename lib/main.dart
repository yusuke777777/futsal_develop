import 'package:flutter/material.dart';
import './signin/02_signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();// ここ大事！
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futsal',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SignInPage(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en"),
        const Locale("ja"),
      ],
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                     child: Text('本アプリに関する利用規約を下記に定めます。')
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(15),
//                 ),
//                 Container(
//                     child: Text('　第１条 利用者',
//                       style: TextStyle(fontWeight: FontWeight.bold),)
//                 ),
//                 Container(
//                     child: Text('　　利用者とは本サービスを〜')
//                 ),
//                 Container(
//                     child: Text('　　〜と定義する。')
//                 ),
//               ],
//             ),
//           ],),
//       ),
//
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => SignInPage()));
//         },
//         label: Text("同意する"),
//       ),
//     );
//   }
// }