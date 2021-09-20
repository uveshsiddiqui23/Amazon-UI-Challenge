import 'package:amazonuichallenge/profile.dart';

import 'package:flutter/material.dart';

import 'amazonhome.dart';
import 'cart.dart';
import 'menu.dart';

class BottomNavigation extends StatefulWidget {
  StateBottomNavigation createState() => StateBottomNavigation();
}

class StateBottomNavigation extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [AmazonHome(), Profile(), Cart(), Menu()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,

        selectedItemColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Messages'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), title: Text('Profile')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined), title: Text('menu')),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
