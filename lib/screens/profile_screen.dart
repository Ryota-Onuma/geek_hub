import 'package:flutter/material.dart';

import '../footer.dart';
import '../header.dart';

class ProfileScreen extends StatefulWidget {
  static String id = 'profile_screen';

  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Header(),
        body: Center(child: Text("Profile")), // <- Text の位置を指定
        bottomNavigationBar: Footer()
    );
  }
}