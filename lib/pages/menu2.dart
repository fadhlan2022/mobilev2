import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/menu2.dart';
import 'package:flutter_login_ui/pages/profile_page2.dart';

import 'profile_page.dart';
import 'widgets/header_widget.dart';

class MenuPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuPage2();
  }
}

class _MenuPage2 extends State<MenuPage2> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;
  double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Bantuan',
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Beranda",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Theme.of(context).primaryColor,
                    Theme.of(context).accentColor,
                  ])),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SafeArea(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        margin: EdgeInsets.fromLTRB(
                            20, 10, 20, 10),
                        child: Column(
                          children: [
                            Text(
                              'Menu',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 20.0),
                            Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    SizedBox(height: 0.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(20, 10, 20, 10),
                                          child: Text(
                                            'Daftar Anggota'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                     ProfilePage2()));
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(45, 10, 45, 10),
                                          child: Text(
                                            'Stopwatch'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MenuPage2()));
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(30, 10, 30, 10),
                                          child: Text(
                                            'Daftar Hobby'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MenuPage2()));
                                        },
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      decoration:
                                      ThemeHelper().buttonBoxDecoration(context),
                                      child: ElevatedButton(
                                        style: ThemeHelper().buttonStyle(),
                                        child:
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(55, 10, 55, 10),
                                          child: Text(
                                            'Sign Out'.toUpperCase(),
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginPage()));
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
