import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nafal/pages/MatchesPage.dart';
import 'package:nafal/pages/MatchesDetailPage.dart';
import 'package:nafal/pages/widgets/header_widget.dart';

class CardView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CardViewState();
  }
}

class _CardViewState extends State<CardView> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Piala Dunia 2022",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        for (int i = 0; i < 2; i++)
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: InkWell(
           onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => MatchesDetailPage()));
          },
          child: itemCard('')),
          ),
        ],
      )
      ),
    );
  }

  Widget itemCard(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 2,
              ),
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12.0),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                  child: ListTile(
                    leading: Column(
                      children: [
                        Image.asset(
                          "images/flag1.png",
                          width: 100,
                          height: 34,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Argentina',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                    // title: Text(
                    //   "12/10/2022",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 12.0),
                    // ),
                    title: Text(
                      "2 : 0",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                    // subtitle: Text(
                    //   '18:04',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 10.0),
                    // ),
                    trailing: Column(
                      children: [
                        Image.asset(
                          "images/flag2.png",
                          width: 100,
                          height: 34,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Brazil',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                  )),
            ],
          )),
    );
  }
}
