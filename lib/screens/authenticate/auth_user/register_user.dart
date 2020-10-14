import 'package:flutter/material.dart';
import 'package:listush/screens/authenticate/auth_user/auth_user_template.dart';


class RegisterUser extends StatefulWidget {

  final Function toggleView;

  RegisterUser({this.toggleView});

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {

  @override
  Widget build(BuildContext context) {
    return AuthUserTemplate(toggleView: widget.toggleView, isSignIn: false,);
  }
}
