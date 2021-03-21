import 'package:flutter/material.dart';
import 'package:oxygen_learn/My Widgets/nav_bar.dart';
import 'package:oxygen_learn/My Widgets/search_bar.dart';
import 'package:oxygen_learn/My Widgets/create_content.dart';

class PublishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Creates our AppBar (top of the screen)
      //appBar: AppBar(leading: SearchBar()),
      body: Column(children: [
        SearchBar(),
        Text('Here, you can take notes in the form of quizz questions.'),
        Expanded(child: SizedBox(height: 200, child: PublishWidget())),
        //CreateContent(),
        Text('Stonks'),
      ]),
      bottomNavigationBar: NavBar(),
    );
  }
}
