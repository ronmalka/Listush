import 'package:flutter/material.dart';
import 'package:listush/shared/constants.dart';
import 'my_list_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  @override
  Widget build(BuildContext context) {

    List<dynamic> list=[];

    categories.forEach((category) {
      list.add(category.name);
      category.items.forEach((item) => list.add(item));
    });

    return ListView.builder(
        itemCount:list.length,
        itemBuilder: (context, index){
          return list[index] is String ?
          Padding(
            padding: const EdgeInsets.only(top:40.0),
            child: Center(
                child: Text(
                  list[index],
                  style:  GoogleFonts.justAnotherHand(
                      fontSize: 22.0,
                      letterSpacing: 2.0
                  ),
                )
            ),
          )
              : MyListTile(item : list[index]);
        }

    );
  }
}
