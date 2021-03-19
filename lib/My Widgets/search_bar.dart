import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3000,
      height: 70,
      child: TextField(),
      padding: EdgeInsets.all(10.0),
      //decoration: BoxDecoration(color: Colors.blue[800]),
    );
  }
}

class OlderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(10.0),
      child: TextField(
          decoration: InputDecoration(hintText: 'Search for a Tag, a human..')),
    );
  }
}

class OldBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        width: 500,
        /*decoration: BoxDecoration(
          color: Colors.blue,
        ),*/
        //padding: EdgeInsets.all(10.0),
        child: TextField(
          decoration: InputDecoration(hintText: 'Search for a Tag, a human..'),
        ),
      ),
    );
  }
}
