import 'package:flutter/material.dart';
import 'package:oxygen_learn/Semi-backend/post_repository.dart';

class AtomicQuestion extends StatelessWidget {
  final Post post;

  const AtomicQuestion({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6000,
      child: Column(
        children: [
          Text(post.text),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900], onPrimary: Colors.red),
                child: Text('False'),
                onPressed: () => print('False'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[900], onPrimary: Colors.green),
                child: Text('True'),
                onPressed: () => print('True'),
              ),
            ],
          ),
        ],
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      width: 600,
      decoration: BoxDecoration(
          color: Colors.grey[800],
          boxShadow: [
            // WARNING :: SHOULD USE BOX SHADOW FROM DESIGN CONSTS
            BoxShadow(
                blurRadius: 5,
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
