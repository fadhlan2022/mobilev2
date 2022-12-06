import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nafal/pages/menu.dart';
import 'package:nafal/pages/profil.dart';
import 'dart:ui';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MenuPage(),
    ProfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("RESPONSI",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              )
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Container(
          child: _widgetOptions[_selectedIndex],
        ),

        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.deepOrangeAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: 'Profil',
                backgroundColor: Colors.blueAccent,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
            ),
        );
    }
}

//
// ListTile(
// subtitle: Container(
// alignment: Alignment.center,
// margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
// padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
// child: Column(
// children: [
// SizedBox(
// height: 20,
// ),
// Text(
// 'Profil',
// style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 20,
// ),
// Text(
// 'Pemrograman Aplikasi Mobil SI-C',
// style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// ),
// SizedBox(
// height: 10,
// ),
// Container(
// padding: EdgeInsets.all(10),
// child: Column(
// children: <Widget>[
// Card(
// child: Container(
// alignment: Alignment.topLeft,
// padding: EdgeInsets.all(15),
// child: Column(
// children: <Widget>[
// Container(
// width: 200,
// height: 200,
// child:
// Image(image: AssetImage('assets/nafal.jpg'))),
// Column(
// children: <Widget>[
// ...ListTile.divideTiles(
// color: Colors.grey,
// tiles: [
// ListTile(
// title: Text("Nama: Nafal Adi SL"),
// ),
// ],
// ),
// ],
// ),
// Column(
// children: <Widget>[
// ...ListTile.divideTiles(
// color: Colors.grey,
// tiles: [
// ListTile(
// title: Text("NIM: 124200025"),
// ),
// ],
// ),
// ],
// ),
// Column(
// children: <Widget>[
// ...ListTile.divideTiles(
// color: Colors.grey,
// tiles: [
// ListTile(
// title:
// Text("TTL: Cilacap, 22 September 2022"),
// ),
// ],
// ),
// ],
// ),
// Column(
// children: <Widget>[
// ...ListTile.divideTiles(
// color: Colors.grey,
// tiles: [
// ListTile(
// title: Text("Hobi: Bermain Game"),
// ),
// ],
// ),
// ],
// )
// ],
// ),
// ),
// )
// ],
// ),
// )
// ],
// ),
// )),