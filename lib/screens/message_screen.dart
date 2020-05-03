import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class MessageScreen extends StatefulWidget {
  static String id = 'message_screen';

  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Header(),
        body: Center(child: Text("Message")), // <- Text の位置を指定
        bottomNavigationBar: Footer()
    );
  }
}