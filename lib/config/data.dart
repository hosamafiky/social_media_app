//Posts
import 'package:social_media_app/models/models.dart';

final _post0 = Post(
  imageUrl: 'assets/images/post0.jpg',
  author: User(),
  title: 'Post0',
  location: 'Location0',
  likes: 150,
  comments: 73,
);

final _post1 = Post(
  imageUrl: 'assets/images/post1.jpg',
  author: User(),
  title: 'Post1',
  location: 'Location1',
  likes: 933,
  comments: 43,
);

final _post2 = Post(
  imageUrl: 'assets/images/post2.jpg',
  author: User(),
  title: 'Post2',
  location: 'Location2',
  likes: 145,
  comments: 23,
);

final _post3 = Post(
  imageUrl: 'assets/images/post3.jpg',
  author: User(),
  title: 'Post3',
  location: 'Location3',
  likes: 250,
  comments: 7,
);

final _post4 = Post(
  imageUrl: 'assets/images/post4.jpg',
  author: User(),
  title: 'Post4',
  location: 'Location4',
  likes: 75,
  comments: 12,
);

final _post5 = Post(
  imageUrl: 'assets/images/post5.jpg',
  author: User(),
  title: 'Post5',
  location: 'Location5',
  likes: 400,
  comments: 3,
);

final posts = [_post0, _post1, _post2, _post3, _post4, _post5];
final users = [
  User(profileImageUrl: 'assets/images/user0.jpg'),
  User(profileImageUrl: 'assets/images/user1.jpg'),
  User(profileImageUrl: 'assets/images/user2.jpg'),
  User(profileImageUrl: 'assets/images/user3.jpg'),
  User(profileImageUrl: 'assets/images/user4.jpg'),
  User(profileImageUrl: 'assets/images/user5.jpg'),
  User(profileImageUrl: 'assets/images/user6.jpg'),
];

final _yourPosts = [_post1, _post3, _post5];
final _yourFavorites = [_post2, _post4, _post0];

//Current User
final currentUser = User(
  profileImageUrl: 'assets/images/user.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'Rebecca',
  following: 453,
  followers: 937,
  posts: _yourPosts,
  favorites: _yourFavorites,
);
