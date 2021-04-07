import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'PageOne.dart';
import 'PageTwo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Coustom Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 5.0 : 0.0,
        toolbarHeight: 70.00,
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text("Raju Islam"),
              accountEmail: Text("rajubdfci@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.black,
                child: new Text(
                  "R",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.black,
                  child: new Text(
                    "J",
                    style: new TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            new ListTile(
              title: new Text("Page One"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageOne()));
              },
            ),
            Divider(),
            new ListTile(
              title: new Text("Page Two"),
              trailing: new Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageTwo()));
              },
            ),
            Divider(),
            new ListTile(
                title: new Text("Exit"),
                trailing: new Icon(Icons.exit_to_app),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Card(
                          elevation: 12,
                          child: AlertDialog(
                            title: Text("Drawer"),
                            content: Text("Do you want to exit?"),
                            actions: [
                              Row(
                                children: [
                                  RaisedButton(
                                      child: Text("cancel"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      }),
                                  SizedBox(
                                    width: 115,
                                  ),
                                  RaisedButton(
                                      child: Text("ok"),
                                      onPressed: () {
                                        exit(0);
                                      }),
                                ],
                              )
                            ],
                          ),
                        );
                      });
                }),
          ],
        ),
      ),
      body: new Container(
        child: Center(
          child: new Text("Home Page",
              style: new TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
