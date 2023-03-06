import 'package:flutter/material.dart';
import 'package:household/fertilizers/chat.dart';
import 'package:household/ui/home.dart';
import 'package:household/news.dart';
import 'package:household/pages/profile.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int currentIndex=0;
  final screens= [
    Home(),
    News(),
    Chat(),
    Profile(charge: 'daily,Rs.1000', name: 'Mr.Shivraj Tharu ', email: 'shivrajtharu62@gmail.com',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amberAccent,
        selectedItemColor:Colors.black,
        unselectedItemColor: Colors.black54,
        iconSize: 28,
        selectedFontSize: 16,
        unselectedFontSize:12,
        currentIndex:currentIndex,
        onTap:(index)=>setState(()=>currentIndex=index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'news',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          )
        ],
      ),
    );
  }
}