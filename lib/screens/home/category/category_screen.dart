import 'package:flutter/material.dart';
import 'package:listush/models/category.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listush/screens/home/category/items_list.dart';
import 'create_form.dart';


class CategoryScreen extends StatefulWidget {
  final Category category;

  CategoryScreen({this.category});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {


  void _showCreatePanel( Category category){
    showModalBottomSheet (
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            color: Colors.grey[300],
           padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: CreateForm(
                //category: widget.category
                 category: category
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    final Category category = (ModalRoute.of(context).settings.arguments as Map)['category'];

    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text(
          //widget.category.name,
          category.name,
          style: GoogleFonts.justAnotherHand(
              fontSize: 25.0,
              letterSpacing: 2.0
          ),
        ),
        backgroundColor: Colors.red[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () => _showCreatePanel(category),
              icon: Icon(Icons.add),
              label: Text(
                  'Item',
                  style: GoogleFonts.justAnotherHand(
                      fontSize: 22.0,
                      letterSpacing: 1.0
                  ))
          ),
        ],
      ),
      body: Center(
        child: ItemList(
      //category : widget.category
      category: category,),
      ),
    );
  }
}
