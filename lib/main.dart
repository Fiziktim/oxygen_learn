import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:flutter/cupertino.dart';

//import 'package:google_fonts/google_fonts.dart';

import 'Pages/home.dart';
import 'Pages/publish.dart';
import 'Pages/account.dart';

// To use providers, you have to wrap your entire app with a widget called ProviderScope
void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OxyFlow UI dev',
      theme: ThemeData.dark(),
      //home: KeyPage(),
      //home: PublishPage(),
      home: AccountPage(),
      //home: HomePage(),
    );
  }
}

// Stack is like a column or a row, it will put them on top of each other
// Write down stl to create a new widget in VSCODE, press tab 👌
