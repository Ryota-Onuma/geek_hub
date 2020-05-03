import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class SearchScreen extends StatefulWidget {
  static String id = 'search_screen';

  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Header(),
        body: Center(child: Text("Search")), // <- Text の位置を指定
        bottomNavigationBar: Footer()
    );
  }
}