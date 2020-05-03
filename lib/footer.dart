import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/message_screen.dart';
import 'screens/post_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/search_screen.dart';

class Footer extends StatefulWidget{
  const Footer();

  @override
  _Footer createState() => _Footer();
}

//class _Footer extends State
//{
 //あああああああああ
//  @override
//  Widget build(BuildContext context) {
//    return BottomNavigationBar(
//      items: const [
//        BottomNavigationBarItem(
//          icon: Icon(Icons.home),
//          title: Text('Home'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.search),
//          title: Text('Search'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.add),
//          title: Text('add'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.person),
//          title: Text('Profile'),
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.chat),
//          title: Text('Chat'),
//        ),
//      ],
//      selectedItemColor: Colors.teal,
//      unselectedItemColor: Colors.black45,
//    );
//  }
//}


class _Footer extends State<Footer> {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  // アイコン情報
  final Map _footerIcons = {
    'ホーム' : Icons.home,
    '検索' : Icons.search,
    '追加': Icons.add,
    '自分' : Icons.person,
    'メッセージ' : Icons.mail,
  };

  // アイコン順番
  final List _footerItemOrder = [
    'ホーム',
    '検索',
    '追加',
    '自分',
    'メッセージ',
  ];

  @override
  void initState() {
    super.initState();
    for ( var i = 0; i < _footerItemOrder.length; i++) {
      _bottomNavigationBarItems.add(_CreateIcon(_footerItemOrder[i]));
    }
  }

  // アイコンを作成する
  BottomNavigationBarItem _CreateIcon(String key) {
    return BottomNavigationBarItem(
      icon: Icon(_footerIcons[key]),
      title: Text(key),
    );
  }

  void _onItemTapped(int index) {
    setState( () {
      _selectedIndex = index;
      switch(index)
      {
        case 0:
          Navigator.of(context).pushNamed(HomeScreen.id);
          break;
        case 1:
          Navigator.of(context).pushNamed(SearchScreen.id);
          break;
        case 2:
          Navigator.of(context).pushNamed(PostScreen.id);
          break;
        case 3:
          Navigator.of(context).pushNamed(ProfileScreen.id);
          break;
        case 4:
          Navigator.of(context).pushNamed(MessageScreen.id);
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _bottomNavigationBarItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.black45,
    );
  }
}
