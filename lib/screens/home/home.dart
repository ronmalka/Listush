import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listush/screens/home/categories_list.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text(
            'Listush',
          style: GoogleFonts.satisfy(
            fontSize: 25.0,
            letterSpacing: 2.0
          ),
        ),
        backgroundColor: Colors.red[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/list'),
              icon: Icon(Icons.format_list_bulleted),
              label: Text(
                  'My List',
                  style: GoogleFonts.justAnotherHand(
                      fontSize: 22.0,
                      letterSpacing: 1.0
                  ))
          ),
          FlatButton.icon(
              onPressed: () async {
              },
              icon: Icon(
                Icons.person,
              ),
              label: Text(
                  'Log Out',
                  style: GoogleFonts.justAnotherHand(
                      fontSize: 22.0,
                      letterSpacing: 1.0
                  ))
          ),
        ],
      ),
      body: Center(
        child: CategoriesList(),
      ),
    );
  }
}
