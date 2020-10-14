import 'sign_in_user.dart';
import 'register_user.dart';
import 'package:flutter/material.dart';

class AuthenticateUser extends StatefulWidget {
  @override
  _AuthenticateUserState createState() => _AuthenticateUserState();
}

class _AuthenticateUserState extends State<AuthenticateUser> {

  bool showSignIn = true;

  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: showSignIn? SignInUser(toggleView: toggleView) : RegisterUser(toggleView: toggleView),
    );
  }
}
