import 'package:flutter/material.dart';
import 'package:listush/screens/home/category/category_screen.dart';
import 'package:listush/screens/home/home.dart';
import 'package:listush/screens/home/my_list/my_list_screen.dart';
import 'package:listush/screens/authenticate/auth_list/sign_in_list.dart';
import 'package:listush/screens/authenticate/auth_list/register_list.dart';
import 'package:listush/screens/authenticate/auth_list/authenticate_list.dart';
import 'package:listush/screens/authenticate/auth_user/authenticate_user.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    bool isHome = false;

    return MaterialApp(
        initialRoute: isHome ? '/home' : '/auth_user',
        routes: {
          '/home': (context) => Home(),
          '/category': (context) => CategoryScreen(),
          '/list': (context) => MyListScreen(),
          '/new_list' : (context) => RegisterList(),
          '/sing_in_list' : (context) => SignInList(),
          '/auth_list' : (context) => AuthenticateList(),
          '/auth_user' : (context) => AuthenticateUser(),
        });
  }
}




