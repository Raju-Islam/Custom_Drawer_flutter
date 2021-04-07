import 'package:flutter/material.dart';
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: Text("Page Two"),),),
          body: Container(
        child:Center(child: new Text("Page Two"),),
      ),
    );
  }
}