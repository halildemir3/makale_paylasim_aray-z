import 'package:flutter/material.dart';
import 'package:makale_diyari/add_page.dart';
import 'package:makale_diyari/explore_page.dart';
import 'package:makale_diyari/message_page.dart';
import 'package:makale_diyari/profile_page.dart';
import 'package:makale_diyari/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedButton = 0;
  final screens = [
    ExplorePage(),
    SearchPage(),
    AddPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedButton],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 0,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedButton,
        onTap: (index) {
          setState(() {
            _selectedButton = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        selectedItemColor: Colors.red,
        unselectedIconTheme: IconThemeData(size: 20, color: Colors.grey),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
