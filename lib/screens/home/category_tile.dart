import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listush/models/category.dart';
class CategoryTile extends StatelessWidget {

  final Category category;

  CategoryTile({this.category});

  @override
  Widget build(BuildContext context) {
    print(category.name);
    print(category.iconPath);
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Column(
        children:<Widget> [
          SizedBox(
            child: Card(
              elevation: 10.0,
              margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
              child:Container(
                height: 80.0,
                width: 80.0,
                child: ListTile(
                  title: Center(
                    child: Image.asset(
                      category.iconPath,
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                  onTap: (){
                    print('[${category.name} , ${category.iconPath}]');
                    Navigator.pushNamed(context, '/category',arguments: {
                        'category' :category
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Text(
            category.name,
            style: GoogleFonts.justAnotherHand(
              fontSize: 20.0,
              letterSpacing: 2.0
            ),

          )
        ]
      ),
      );
  }
}

