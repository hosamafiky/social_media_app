import 'package:flutter/material.dart';
import 'package:social_media_app/screens/screens.dart';
import 'package:social_media_app/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: CurveClipper(),
                child: Image(
                  height: MediaQuery.of(context).size.height / 2.5,
                  image: AssetImage('assets/images/login_background.jpg'),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Text(
                'FRENZY',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.account_box,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30.0,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 40.0),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0),
                  height: 45.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Don\'t have an account? Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
