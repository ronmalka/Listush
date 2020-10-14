import 'package:flutter/material.dart';
import 'package:listush/models/category.dart';
import 'item_tile.dart';

class ItemList extends StatefulWidget {

  final Category category;

  ItemList({this.category});

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.category.items.length,
        itemBuilder: (context, index){
          return ItemTile(
              item : widget.category.items[index]
          );
        }

    );
  }
}
