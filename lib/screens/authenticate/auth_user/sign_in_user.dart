import 'package:flutter/material.dart';
import 'package:listush/screens/authenticate/auth_user/auth_user_template.dart';

class SignInUser extends StatefulWidget {
  final Function toggleView;

  SignInUser({this.toggleView});

  @override
  _SignInUserState createState() => _SignInUserState();
}

class _SignInUserState extends State<SignInUser> {

  final _formKey = GlobalKey<FormState>();

  String email= '';
  String password = '';
  String error ='';
  @override
  Widget build(BuildContext context) {
    return AuthUserTemplate(toggleView: widget.toggleView,isSignIn: true,);
  }
}
