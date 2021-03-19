import 'package:flutter/material.dart';
import 'package:oxygen_learn/Semi-backend/post_repository.dart';
import '../styling_finals.dart';

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
          Text(post.text),
        ],
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
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

    return Column(
      children: [
        SizedBox(height: 16),
        Row(
          children: [
            horizontalPadding,
            CircleAvatar(backgroundColor: Colors.grey, radius: 16),
            horizontalPadding,
            Text('Name'),
            Spacer(),
            Text('12h'),
            horizontalPadding,
          ],
        ),
        Container(
          child: Text(post.text),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
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
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_circle_up_sharp,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_circle_down_sharp,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.comment,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              SizedBox(height: 16),
              Row(
                children: [
                  horizontalPadding,
                  CircleAvatar(backgroundColor: Colors.grey, radius: 16),
                  horizontalPadding,
                  Text('Name'),
                  Spacer(),
                  Text('12h'),
                  horizontalPadding,
                ],
              ),
              SizedBox(height: 16),
              AspectRatio(
                aspectRatio: 1,
                child: Text(post.text),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_circle_up_sharp,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_circle_down_sharp,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.comment,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
