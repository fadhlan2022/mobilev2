import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/widgets/header_widget.dart';

class PersegiPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PersegiPageState();
  }
}

class _PersegiPageState extends State<PersegiPage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  double sisi = 0;
  double _luas = 0;
  double _keliling = 0;

  void _luaspersegi() {
    setState(() {
      _luas = sisi * sisi;
    });
  }

  void _kelilingpersegi() {
    setState(() {
      _keliling = sisi * 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Persegi",
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
                  Container(),
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    'Persegi',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Menghitung Luas dan Keliling',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Luas",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          onChanged: (value) {
                            sisi = double.parse(value);
                          },
                          enabled: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "(cm)",
                            label: Text("Panjang Sisi"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          '$_luas cm',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                      onPressed: _luaspersegi,
                      child: Column(
                        children: [Text("Luas")],
                      )),
                  SizedBox(height: 50),
                  Text(
                    "Keliling",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          '$_keliling cm',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                      onPressed: _kelilingpersegi,
                      child: Column(
                        children: [Text("Keliling")],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
