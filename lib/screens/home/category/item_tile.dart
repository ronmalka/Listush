import 'package:listush/models/item.dart';
import 'package:flutter/material.dart';
import 'edit_form.dart';

class ItemTile extends StatefulWidget {

  final Item item;

  ItemTile({this.item});

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {

  Color _bgColor;

  void _showEditPanel(){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: EditForm(item: widget.item),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 8.0),
      child: Card(
        color: _bgColor,
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text(widget.item.name),
                subtitle: Text(widget.item.quantity.toString()),
              ),
            ),
            Spacer(),
            FlatButton.icon(
              icon: Icon(Icons.edit),
              onPressed:_showEditPanel,
              label: Text(''),
            )
          ]),
      ),
    );

  }
}
