import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listush/shared/constants.dart';
import 'my_list.dart';


class MyListScreen extends StatefulWidget {



  @override
  _MyListScreenState createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text(
          //widget.category.name,
          'My List',
          style: GoogleFonts.justAnotherHand(
              fontSize: 25.0,
              letterSpacing: 2.0
          ),
        ),
        backgroundColor: Colors.red[400],
        elevation: 0.0,
      ),
      body: Center(
        child: MyList()
      ),
    );
  }
}
