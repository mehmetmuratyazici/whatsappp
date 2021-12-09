// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

import 'package:whatsappp/screen/w_camera.dart';
import 'package:whatsappp/screen/w_chats.dart';
import 'package:whatsappp/screen/w_settings.dart';
import 'package:whatsappp/screen/w_status.dart';
import 'package:whatsappp/w_calls.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  void showMessage() {}
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        print(index);
      });
    }

    List<Widget> _pages = <Widget>[
      Status(),    
      Calls(),
      Camera(),      
      Chats(), 
      Settings(),
      
    ];

    final navbar = BottomNavigationBar(
   
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Colors.grey,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.grey,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey,
            ),
            label: 'Settings',
          ),
        ]
        );
    return Scaffold(
      bottomNavigationBar: navbar,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}
