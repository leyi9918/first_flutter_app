import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {

  var _appScreenList =[
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Tickets")),
    Center(child: Text("Person"))
  ];
  int _currentIndex = 0;

  void _setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Flutter first"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:Center(
        child:_appScreenList[_currentIndex]
      ),
      bottomNavigationBar:BottomNavigationBar(
        onTap: _setCurrentIndex,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blueGrey,
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xFF526400),
        items: [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label:"Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Person",
          ),
        ]
        )
      );
  }
}
