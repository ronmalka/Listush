import 'package:flutter/material.dart';
import 'sign_in_list.dart';
import 'register_list.dart';

class AuthenticateList extends StatefulWidget {
  @override
  _AuthenticateListState createState() => _AuthenticateListState();
}

class _AuthenticateListState extends State<AuthenticateList> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
        title: Text('Listush'),
    ),
    body: Column(
        children: [
          RaisedButton(
            color: Colors.grey[600],
            child: Text('Create New List'),
            onPressed: (){
              Navigator.pushNamed(context, '/new_list');
            },
          ),
          SizedBox(height: 12.0,),
          RaisedButton(
            color: Colors.grey[600],
            child: Text('Sign In To List'),
            onPressed: (){
              Navigator.pushNamed(context, '/sign_in_list');
            },
          ),
        ],
      )
    );
  }
}
