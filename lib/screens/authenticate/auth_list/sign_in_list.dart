import 'package:flutter/material.dart';
import 'auth_list_template.dart';

class SignInList extends StatefulWidget {

  @override
  _SignInListState createState() => _SignInListState();
}

class _SignInListState extends State<SignInList> {

  @override
  Widget build(BuildContext context) {
    return AuthListTemplate(isSignIn: true,);
  }
}
