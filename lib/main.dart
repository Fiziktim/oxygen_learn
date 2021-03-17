import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

//import 'package:google_fonts/google_fonts.dart';

import 'home_page copy.dart';
import 'key_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OxyFlow UI dev',
      theme: ThemeData.light(),
      //home: KeyPage(),
      home: HomePage(),
    );
  }
}

// Stack is like a column or a row, it will put them on top of each other

/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future search-bar here"),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // The one that's often most visually pleasing is space Evenly
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*Container(
                child: Row(
              children: [
                TextField(),
                //Icon(Icons.search)
              ],
            )),*/
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(),
              ),
            ),
            Icon(Icons.search),
            Container(
              child: Text('Knowledge Atom, lorem ipsum, potato ipsum'),
              color: Colors.black12,
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: Text('Knowledge Atom, lorem ipsum, potato ipsum'),
              color: Colors.black12,
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: Text('Knowledge Atom, lorem ipsum, potato ipsum'),
              color: Colors.black12,
              padding: EdgeInsets.all(20.0),
            ),
          ],
        ),
      ),

      // Question : How can I make this a widget and just import it here ?
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, // This allows you more than 3 items in the navbar
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Publish',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}*/

/*
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom nav bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, // This allows you more than 3 items in the navbar
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
*/
