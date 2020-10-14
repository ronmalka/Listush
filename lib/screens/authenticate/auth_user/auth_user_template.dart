import 'package:flutter/material.dart';
import 'package:listush/screens/authenticate/auth_user/sign_in_user.dart';
import 'package:listush/shared/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthUserTemplate extends StatefulWidget {

  final Function toggleView;
  final bool isSignIn;

  AuthUserTemplate({this.toggleView, this.isSignIn});

  @override
  _AuthUserTemplateState createState() => _AuthUserTemplateState();
}

class _AuthUserTemplateState extends State<AuthUserTemplate> {

  final _formKey = GlobalKey<FormState>();

  String email= '';
  String password = '';
  String error ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
        title: Row(
            children:[
              Text(
                  '${ widget.isSignIn ? 'Sign In' : 'Register'} To  ',
              ),
              Text(
                  'Listush',
                style: GoogleFonts.satisfy(
                    fontSize: 25.0,
                    letterSpacing: 2.0
                ),
              )
            ]
        ),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              widget.toggleView();
            },
            icon: Icon(Icons.person),
            label: Text('${!widget.isSignIn ? 'Sign In' : 'Register'} '),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,64.0,0),
                    child: ClipRRect(
                        child: Image.asset(
                            'assets/listud-logo.png',
                        fit: BoxFit.cover),
          ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical : 20.0,horizontal: 50.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: inputDecoration,
                          child: TextFormField(
                            decoration:textInputDecoration.copyWith(hintText: 'Email'),
                            validator: (val) => val.isEmpty ? "Enter an email" : null,
                            onChanged: (val){
                              setState(() {
                                email = val;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          decoration: inputDecoration,
                          child: TextFormField(
                            decoration: textInputDecoration.copyWith( hintText: 'Password',),
                            //textInputDecoration.copyWith(hintText: 'Password'),
                            validator: (val) => val.length < 6 ? "Enter a password 6+ chars long" : null,
                            obscureText: true,
                            onChanged: (val){
                              setState(() {
                                password = val;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          onPressed: () async {
                            if(_formKey.currentState.validate()) {
                              print(email);
                              print(password);
                              Navigator.pushNamed(context, '/auth_list');
                            }
                          },

                          color: Colors.redAccent[400],
                          child: Text(
                            '${ widget.isSignIn ? 'Sign In' : 'Register'}',
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
              ]
            ),
          ),
        ),
      ),
    );
  }
}
