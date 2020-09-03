import 'package:flutter/material.dart';

import 'package:social_media_app/models/models.dart';
import 'package:flutter/widgets.dart';
import 'package:social_media_app/widgets/custom_drawer.dart';
import 'package:social_media_app/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  final User user;
  const ProfileScreen({this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController _yourPostsPageController;
  PageController _yourFavoritesPageController;
  @override
  void initState() {
    super.initState();
    _yourPostsPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
    _yourFavoritesPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: ProfileClipper(),
                  child: Image(
                    image: AssetImage(widget.user.backgroundImageUrl),
                    height: 300.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 20.0,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    color: Theme.of(context).primaryColor,
                    iconSize: 30.0,
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image(
                        image: AssetImage(widget.user.profileImageUrl),
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(widget.user.name,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Following',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22.0,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      widget.user.following.toString(),
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(
                      widget.user.followers.toString(),
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            PostsCarousel(
              pageController: _yourPostsPageController,
              title: 'Your Posts',
              posts: widget.user.posts,
            ),
            PostsCarousel(
              pageController: _yourFavoritesPageController,
              title: 'Favorites',
              posts: widget.user.favorites,
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
