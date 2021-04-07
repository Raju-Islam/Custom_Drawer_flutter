import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MaterialApp(
      theme: new ThemeData(primaryColor: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    ),
    );
