import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/hobby.dart';
import 'package:flutter_login_ui/pages/login_page.dart';
import 'package:flutter_login_ui/pages/menu2.dart';
import 'package:flutter_login_ui/pages/profile_page2.dart';
import 'widgets/header_widget.dart';
import 'package:flutter_login_ui/pages/hobby.dart';
import 'package:flutter_login_ui/pages/stopwatch.dart';

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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      SingleChildScrollView(
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
                                          Navigator.push(
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      StopwatchPage()));
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HobbyPage()));
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
                                          Navigator.push(
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
    ListTile(
      title: Text(
        "Bantuan",
        style: TextStyle(fontSize: 22, color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    subtitle: Text("\n "
        "Cara Menggunakan Aplikasi : \n"
        "   1. Silahkan login sebelum menggunakan aplikasi \n"
        "   2. Masukkan username dan password yang sudah \n "
        "      terdaftar"
        "   3. Pilih menu yang anda butuhkan pada beranda \n"
        "   4. Keterangan Menu : \n"
        "        *) Menu Daftar Anggota berisi daftar anggota \n "
        "           kelompok 7 \n"
        "        *) Menu Stopwatch berisi fitur stopwatch \n"
        "        *) Menu Daftar Hobby berisi daftar hobi anggota \n"
        "           kelompok 7 \n"
        "        *) Sign Out Bergungsu untuk keluar dari akun yang \n "
        "           terhubung \n"
        "   5. Fitur Bantuan berfungsi untuk menampilkan bantuan \n "
        "      seputar penggunaan aplikasi"),
    ),
    ];
    return Scaffold(
      appBar: AppBar(
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
      body: widgets [currentIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Beranda'),
          TabItem(icon: Icons.lightbulb, title: 'Bantuan'),
        ],
        initialActiveIndex: 0,
        onTap: (int i){
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
