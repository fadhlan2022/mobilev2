import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'widgets/header_widget.dart';
import '/pages/trapesium.dart';
import '/pages/segitiga.dart';
import '/pages/lingkaran.dart';
import '/pages/persegi.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuPage();
  }
}

class _MenuPage extends State<MenuPage> {
  // double _drawerIconSize = 24;
  // double _drawerFontSize = 17;
  // double _headerHeight = 250;
  Key _formKey = GlobalKey<FormState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Container(
        // child: Stack(
        child: GridView.count(
          padding: EdgeInsets.all(25),
          crossAxisCount: 2,
          children: [
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return TrapesiumPage();
                    },
                  ));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.format_shapes,
                        size: 70,
                        color: Color(0xff0095FF),
                      ),
                      Text(
                        "Trapesium",
                        style: TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              //segitiga
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SegitigaPage();
                    },
                  ));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.signal_cellular_0_bar,
                        size: 70,
                        color: Color(0xff0095FF),
                      ),
                      Text(
                        "Segitiga",
                        style: TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LingkaranPage();
                    },
                  ));
                },
                splashColor: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        size: 70,
                        color: Color(0xff0095FF),
                      ),
                      Text(
                        "Lingkaran",
                        style: TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PersegiPage();
                      },
                    ));
                  },
                  splashColor: Colors.blue,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.check_box_outline_blank,
                          size: 70,
                          color: Color(0xff0095FF),
                        ),
                        Text(
                          "Persegi",
                          style: TextStyle(fontSize: 17.0),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
      ListTile(
          subtitle: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Profil',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pemrograman Aplikasi Mobil SI-C',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Card(
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Container(
                              width: 200,
                              height: 200,
                              child:
                                  Image(image: AssetImage('assets/nafal.jpg'))),
                          Column(
                            children: <Widget>[
                              ...ListTile.divideTiles(
                                color: Colors.grey,
                                tiles: [
                                  ListTile(
                                    title: Text("Nama: Nafal Adi SL"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ...ListTile.divideTiles(
                                color: Colors.grey,
                                tiles: [
                                  ListTile(
                                    title: Text("NIM: 124200025"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ...ListTile.divideTiles(
                                color: Colors.grey,
                                tiles: [
                                  ListTile(
                                    title:
                                        Text("TTL: Cilacap, 22 September 2022"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ...ListTile.divideTiles(
                                color: Colors.grey,
                                tiles: [
                                  ListTile(
                                    title: Text("Hobi: Bermain Game"),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
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
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Beranda'),
          TabItem(icon: Icons.lightbulb, title: 'Profil'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
