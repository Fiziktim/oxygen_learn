import 'package:flutter/material.dart';
import 'package:oxygen_learn/My Widgets/atomic_answer.dart';
import 'package:oxygen_learn/Semi-backend/post_repository.dart';
import 'package:oxygen_learn/My Widgets/nav_bar.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Creates our AppBar (top of the screen)
      //appBar: AppBar(leading: SearchBar()),
      body: Column(children: [
        TopPart(),
        //TagsList(),
        Expanded(child: SizedBox(height: 200, child: PersonalFeed()))
      ]),
      bottomNavigationBar: NavBar(),
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3000,
      //height: 70,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 62,
          ),
          Container(
              child: Text('Timothée Oliveau'), padding: EdgeInsets.all(20.0)),
          Container(
              child: Text(
                  'Lorem ipsum bio of the potato in the maximal amount of stonks for a better world'),
              padding: EdgeInsets.all(20.0)),
        ],
      ),
      padding: EdgeInsets.all(20.0),

      // WARNING :: SHOULD USE BOX SHADOW FROM DESIGN CONSTS
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 3),
            spreadRadius: 0,
          ),
        ],
      ),
    );
  }
}

class TagsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3000,
      padding: EdgeInsets.all(20.0),
      child: ListView(),

      /*Text(
            '#Poulpe')*/ /*ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Tag(),
          Tag(),
          Tag(),
          Tag(),
          Tag(),
          /*
          Text('#Music'),
          Text('#Physics'),
          Text('#Memes'),
          Text('#Agile'),
          Text('#Patrick'),
          Text('#Hashtag'),
          Text('#Another_hashtag_really'),
          Text('#Pooooulpe'),
          Text('#Chibranus'),
          Text('#Bite'),
          Text('#The_final_hashtaaag'),
          */
        ],
      ),*/
    );
  }
}

class Tag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0), child: Text('#Poulpe'));
  }
}

class PersonalFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AtomicAnswer(post: Post(1, 'This is a test')),
        AtomicAnswer(post: Post(2, 'This is a Stonks')),
        AtomicAnswer(post: Post(3, 'This is a Stinks')),
        AtomicAnswer(post: Post(4, "I've also written this question")),
        AtomicAnswer(post: Post(5, "Look, I know this, I'm smart")),
        AtomicAnswer(post: Post(6, "Poulpe")),
        AtomicAnswer(post: Post(7, "Can you answer this though ?")),
        AtomicAnswer(post: Post(8, "Toudouktodouktouk")),
      ],
    );
  }
}
