import 'dart:math';

// Outputs a random Text
String randomText() {
  final list = [
    'Lorem, lorem, loreeeem patrick de la ciudada del parallépipède',
    'Ipsum Lorem ipsum  sébastien del ekranoplane',
    'Stonks sébastien Chibre la ciudada del pélo',
    'Patrick Lorem ipsum patrick Bengalais de la ciudada del poulpozaure',
    'Poulpe Lorem ipsum patrick sébastien del pute',
    'USSR patrick de la del michel sardoux'
  ];
  // generates a new Random object
  final _random = new Random();

  // generate a random index based on the list length
  // and use it to retrieve the element
  return list[_random.nextInt(list.length)];
}

// Creates a Post class and determines what's in there
class Post {
  int id;
  String text;

  Post(this.id, this.text);
}

// To understand this class, see class MockPostRepository which feeds from it.
abstract class PostRepository {
  Future<List<Post>> getAllPosts();
  Stream<List<Post>> watchAllPosts();
  Future<bool> thanks(int id);
  Future<bool> unthanks(int id);
}

class MockPostRepository implements PostRepository {
  // Returns a list containing all posts.
  @override
  Future<List<Post>> getAllPosts() async {
    await Future.delayed(Duration(seconds: 0)); // This line seems to do nothing
    return [
      Post(1, 'Text one'),
      Post(2, 'Text two'),
      Post(3, 'Text three'),
      Post(4, 'Text four'),
      Post(5, 'Text five'),
    ];
  }

  @override // thanks() seems to not be implemented yet
  Future<bool> thanks(int id) async {
    return true;
  }

  @override // unthanks() seems to not be implemented yet
  Future<bool> unthanks(int id) async {
    return false;
  }

  @override //
  Stream<List<Post>> watchAllPosts() async* {
    // Seems that async* allows you to return yields
    var posts = <
        Post>[]; // Creates a dictionary that has to be filled with Posts (described by the class Post)
    // Every 3 seconds, adds a Post to the list 'posts' with an id of current list length and a random text. Every time it loops, it returns the new post.
    var time = 10;
    while (true) {
      time *= 2;
      await Future.delayed(Duration(milliseconds: time));
      posts.add(Post(posts.length, randomText()));
      yield posts;
    }
  }
}
