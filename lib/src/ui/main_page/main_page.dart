import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../home/home.dart';

class MainPageScreen extends StatefulWidget {
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Color.fromRGBO(94, 127, 253, 1.0),
          unselectedItemColor: Colors.grey[700],
          currentIndex: _currentIndex,
          onTap: onTappedBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesome.getIconData('dropbox')), title: Text("Products")),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.getIconData('ios-search')), title: Text("Search")),
            BottomNavigationBarItem(
                icon: Icon(FontAwesome.getIconData('shopping-cart')), title: Text("Cart")),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.getIconData("md-apps")), title: Text("Person"))
          ]
      ),
    );
  }
}
