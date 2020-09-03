import 'package:flutter/material.dart';
import 'package:social_media_app/config/data.dart';
import 'package:social_media_app/models/models.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            'Following',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),
        Container(
          height: 80.0,
          padding: EdgeInsets.only(left: 10.0),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              User user = users[index];
              return GestureDetector(
                onTap: () => print('Story'),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(00, 2),
                      ),
                    ],
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: ClipOval(
                    child: Image(
                      image: AssetImage(user.profileImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
