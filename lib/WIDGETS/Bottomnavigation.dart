import 'package:flutter/material.dart';
import 'package:play/MAINSCREENS/DownloadScreen.dart';
import 'package:play/MAINSCREENS/Favoritesscreen.dart';
import 'package:play/MAINSCREENS/Homescreen.dart';
import 'package:play/MAINSCREENS/RecentScreen.dart';
import 'package:play/MAINSCREENS/ShortsScreen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int touch = 0;
  List navigationPage = [
    const HomeOne(),
    const DwnldScreen(),
    const FavScreen(),
    const RecntScreen(),
    const ShortScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPage.elementAt(touch),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xffF56200),
        unselectedItemColor: Colors.white,
        currentIndex: touch,
        onTap: (index) {
          setState(() {
            touch = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.download_outlined),
              label: 'downloads',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'favorate',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined),
              label: 'Recent',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_movies_outlined),
              label: 'Shorts',
              backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
