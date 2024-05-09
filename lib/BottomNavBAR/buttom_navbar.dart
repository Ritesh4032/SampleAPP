import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:try_something/BottomNavBAR/SEARCH.dart';
import 'package:try_something/Profile/profile.dart';
import 'package:try_something/travel_interface/interface.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

int _currrentIndex = 2;
final tabs = [
  Search(),
  Center(
    child: Text('Person'),
  ),
  MyInterface(),
  Center(
    child: Text('Person'),
  ),
  Profile(),
];

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currrentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.search),
            label: 'Search',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.newspaper),
            label: 'Feed',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.perm_identity),
            label: 'Personal',
          ),
        ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.lightGreen,
        backgroundColor: Color.fromARGB(255, 192, 218, 231),
        animationCurve: Curves.ease,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currrentIndex = index;
          });
        },
      ),
    );
  }
}
