import 'package:flutter/material.dart';
import 'package:oxygen_learn/Semi-backend/post_repository.dart';
import 'package:oxygen_learn/My Widgets/atomic_answer.dart';

class QuizzFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        StreamBuilder<List<Post>>(
          stream: MockPostRepository()
              .watchAllPosts(), // Gets the list of posts from Semi-backend post_repository
          builder: (context, snapshot) {
            // Show the loading sign when the post is loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            final data = snapshot.data;
            if (data != null) {
              //print(data);
              return Column(
                children: [
                  Column(
                    // Let's take the following line step by step
                    // Data has Post objects, with a text and an id
                    // The following makes a list, with only the text of the Posts. (the Posts that are inside of data)
                    children: data.map((e) => AtomicAnswer(post: e)).toList(),
                  ),
                  CircularProgressIndicator(),
                ],
              );
            }
            return Text('Unexpected Error!');
          },
        )
      ],
    );
  }
}

/*
class QuizzFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StreamBuilder<List<Post>>(
          stream: MockPostRepository()
              .watchAllPosts(), // Gets the list of posts from Semi-backend post_repository
          builder: (context, snapshot) {
            // Show the loading sign when the post is loading
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            final data = snapshot.data;
            if (data != null) {
              //print(data);
              return Column(
                // Let's take the following line step by step
                // Data has Post objects, with a text and an id
                // The following makes a list, with only the text of the Posts. (the Posts that are inside of data)
                children: data.map((e) => AtomicAnswer(post: e)).toList(),
              );
            }
            return Text('Unexpected Error!');
          },
        )
      ],
    );
  }
}
*/
