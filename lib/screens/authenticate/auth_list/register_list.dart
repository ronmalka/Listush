import 'package:flutter/material.dart';
import 'auth_list_template.dart';


class RegisterList extends StatefulWidget {

  @override
  _RegisterListState createState() => _RegisterListState();
}

class _RegisterListState extends State<RegisterList> {

  @override
  Widget build(BuildContext context) {
    return AuthListTemplate(isSignIn: false,);
  }
}
