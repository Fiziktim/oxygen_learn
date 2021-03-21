import 'package:flutter/material.dart';
import 'package:oxygen_learn/Semi-backend/post_repository.dart';

class AtomicAnswer extends StatelessWidget {
  final Post post;

  const AtomicAnswer({
    required this.post,
  });
  // Every time I make a change to this file, hot restart and hot reload don't work, and, basically, the app crashes.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(post.text),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      width: 600, // This is actually the max width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.grey[800],
        boxShadow: [
          // WARNING :: SHOULD USE BOX SHADOW FROM DESIGN CONSTS
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

/*
class AtomicAnswer extends StatelessWidget {
  final Post post;

  const AtomicAnswer({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              child: Text(post.text),
              padding: EdgeInsets.all(20.0),
              //margin: EdgeInsets.all(20.0),
              width: 600, // This is actually the max width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.grey[800],
              )),
          TextField(),
          TextField(),
          ElevatedButton(
              child: Text('Publish'), onPressed: () => print('Publish')),
        ],
      ),
      //padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      width: 600, // This is actually the max width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.red[900],
        boxShadow: [
          // WARNING :: SHOULD USE BOX SHADOW FROM DESIGN CONSTS
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
}*/
// Spacer
