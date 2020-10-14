import 'package:flutter/material.dart';
import 'package:listush/models/item.dart';

class MyListTile extends StatefulWidget {

  final Item item;
  Color _bgColor;
  MyListTile({this.item, });


  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
   Color _bgColor;

  void _itemColorChangeByCheck(bool state){
    print('change to $state');
    setState(() {
      widget.item.state = state;
      _bgColor = state ? Colors.grey[200] : null;
    });
  }

  @override
  Widget build(BuildContext context) {

    _itemColorChangeByCheck(widget.item.state);

    return Padding(
      padding: const EdgeInsets.only(top : 8.0),
      child: Card(
        color: _bgColor,
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0),
        child: Row(
            children: [
              Flexible(
                  child: Checkbox(
                    value: this.widget.item.state,
                    onChanged: (bool val) {
                      _itemColorChangeByCheck(val);
                    },
                  )
              ),
              Flexible(
                child: ListTile(
                  title: Text(widget.item.name),
                  subtitle: Text(widget.item.quantity.toString()),
                  onTap: () {
                      _itemColorChangeByCheck(!widget.item.state);
                    }
                ),
              ),
            ]),
      ),
    );

  }
}
