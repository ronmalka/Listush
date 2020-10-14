import 'package:flutter/material.dart';
import 'package:listush/shared/constants.dart';


class AuthListTemplate extends StatefulWidget {


  final bool isSignIn;

  AuthListTemplate({this.isSignIn});

  @override
  _AuthListTemplateState createState() => _AuthListTemplateState();
}

class _AuthListTemplateState extends State<AuthListTemplate> {

  final _formKey = GlobalKey<FormState>();

  String email= '';
  String password = '';
  String error ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
        title: Text('${ widget.isSignIn ? 'SignIn' : 'Register'} Up To Listush'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical : 20.0, horizontal:50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0,),
              TextFormField(
                decoration:textInputDecoration.copyWith(hintText: 'Email'),
                validator: (val) => val.isEmpty ? "Enter an email" : null,
                onChanged: (val){
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                decoration:textInputDecoration.copyWith(hintText: 'Password'),
                validator: (val) => val.length < 6 ? "Enter a password 6+ chars long" : null,
                obscureText: true,
                onChanged: (val){
                  setState(() {
                    password = val;
                  });
                },
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                onPressed: () async {
                  if(_formKey.currentState.validate()) {
                    print(email);
                    print(password);
                  }
                },
                color: Colors.pink[400],
                child: Text(
                  '${ !widget.isSignIn ? 'SignIn' : 'Register'}',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 12.0,),
              Text(
                error,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
