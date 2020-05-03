import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class PostScreen extends StatefulWidget {
  static String id = 'post_screen';

  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Header(),
        body: Center(child: Text("Post")), // <- Text の位置を指定
        bottomNavigationBar: Footer()
    );
  }
}