import 'package:flutter/material.dart';

class PublishWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TextField(),
        TextField(),
        ElevatedButton(
            onPressed: () => print('Button Pressed'), child: Text('Publish')),
      ]),
      // BIG WARNING : COPIED CODE FROM ATOMIC_ANSWERS
      padding: EdgeInsets.all(20.0),
      //margin: EdgeInsets.all(20.0),
      width: 600, // This is actually the max width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.grey[800],
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
