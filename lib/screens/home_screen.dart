import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Header(),
        body: Center(child: Text("home")), // <- Text の位置を指定
        bottomNavigationBar: Footer()
    );
  }
}


