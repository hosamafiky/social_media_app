import 'package:flutter/material.dart';
import 'package:social_media_app/config/data.dart';
import 'package:social_media_app/screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 20.0),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                height: 200.0,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3.0, color: Theme.of(context).primaryColor),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6.0),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        fontSize: 25.0,
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            ),
          ),
          _buildDrawerOption(Icon(Icons.chat), 'Chat', () {}),
          _buildDrawerOption(Icon(Icons.location_on), 'Map', () {}),
          _buildDrawerOption(
            Icon(Icons.account_circle),
            'Your Profile',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (_) => ProfileScreen(user: currentUser)),
            ),
          ),
          _buildDrawerOption(Icon(Icons.settings), 'Settings', () {}),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildDrawerOption(
                Icon(Icons.directions_run),
                'Log Out',
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
