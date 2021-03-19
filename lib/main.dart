import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

//import 'package:google_fonts/google_fonts.dart';

import 'Pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OxyFlow UI dev',
      theme: ThemeData.dark(),
      //home: KeyPage(),
      home: HomePage(),
    );
  }
}

// Stack is like a column or a row, it will put them on top of each other
// Write down stl to create a new widget in VSCODE, press tab 👌
