import 'package:flutter/material.dart';

// stl Scroll soon to be Flappy Scroll
class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (int i = 0; i < 30; i++) PreAtom(),
        ],
      ),
    );
  }
}

class PreAtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          'Poulpe, lorem ipsum ezjote krgsojf jf,snkjfe,dj k,dsfwf,jf,djk,lnd bkfke,lswkjefs,wjkef,swjek,slkjfl oefklnd oekfslwnd k'),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 3),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}

class OxyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(10.0),
      child: TextField(
          decoration: InputDecoration(hintText: 'Search for a Tag, a human..')),
    );
  }
}

class Atom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Text('Knowledge Atom, from, Atom, lorem ipsum, potato ipsum'),
      color: Colors.black12,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.red,
            offset: Offset.zero,
            spreadRadius: 4,
          ),
        ],
        //shape: BoxShape(RoundedRectangleBorder(borderRadius: BorderRadius.zero))
      ),
    );
  }
}
