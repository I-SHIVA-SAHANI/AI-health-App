import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medi_h/HomeScreen.dart';
import 'package:medi_h/ChatsScreen.dart';
import 'package:medi_h/ScheduleScreen.dart';
import 'package:medi_h/SettingsScreen.dart';
class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  Widget build(BuildContext context){
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          //Navigation bar items
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            backgroundColor: Colors.white,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: "Chats",
            backgroundColor: Colors.white,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.schedule_send),
            label: "Schedules",
            backgroundColor: Colors.white,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
            backgroundColor: Colors.white,
          ),
        ]),
      tabBuilder:(context,index) {
        switch(index) {
          case 0:
            return CupertinoTabView(
              builder: (context){
              return CupertinoPageScaffold(child: HomeScreen());
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context){
                return CupertinoPageScaffold(child: ChatsScreen());
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context){
                return CupertinoPageScaffold(child: ScheduleScreen());
              },
            );

          case 3:
            return CupertinoTabView(
              builder: (context){
                return CupertinoPageScaffold(child: SettingsScreen());
              },
            );
        };
        return Container();
      }
    );
  }
}

