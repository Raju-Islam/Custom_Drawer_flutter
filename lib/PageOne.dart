import 'package:flutter/material.dart';
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("Page One"),)
      ),
          body: Container(
        child:Center(child: new Text("Page One"),),
      ),
    );
  }
}