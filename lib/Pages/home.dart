import 'package:flutter/material.dart';
import 'package:oxygen_learn/My Widgets/quizz_feed.dart';
import 'package:oxygen_learn/My Widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Creates our AppBar (top of the screen)
      //appBar: AppBar(leading: SearchBar()),
      body: Column(children: [
        Expanded(child: SizedBox(height: 200, child: QuizzFeed()))
      ]),
      bottomNavigationBar: NavBar(),
    );
  }
}
