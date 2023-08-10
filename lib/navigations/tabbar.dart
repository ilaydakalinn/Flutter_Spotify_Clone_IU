import 'package:flutter/material.dart';
import 'package:spotifyclone/ui/home.dart';

import '../ui/library.dart';
import '../ui/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) {
            setState(() {
              this._selectedTab = index;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Arama"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), label: "Kitaplığım"),
          ]),
      body: Stack(
        children: [
          renderView(0, Home()),
          renderView(1, Search()),
          renderView(2, Library()),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
