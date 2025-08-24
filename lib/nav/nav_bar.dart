import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Flutter first"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:Center(
        child:const Text("hello flutter")
      ),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        showSelectedLabels: false,
        unselectedItemColor: const Color(0xFF526400),
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search"),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label:"Tickets"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Person")
      ]
      )
    );
  }
}
