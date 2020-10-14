import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listush/models/category.dart';
import 'package:listush/models/item.dart';
import 'package:listush/shared/constants.dart';

class CreateForm extends StatefulWidget {

  final Category category;

  CreateForm({this.category});

  @override
  _CreateFormState createState() => _CreateFormState();
}

class _CreateFormState extends State<CreateForm> {

  final _formKey = GlobalKey<FormState>();

  String _currentName;
  int _currentQuantity;

  String numberValidator(String value) {
    if(value == null) {
      return null;
    }
    final n = num.tryParse(value);
    if(n == null) {
      return '"$value" is not a valid number';
    }
    return null;
  }

  void _addItem(String name, int quantity) {
    print('here');
    setState(() {
      widget.category.items.add(Item(
        name: name,
        quantity: quantity,
        state: false,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'Create your item',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0,),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Item Name'),
              validator:(val) => val.isEmpty ? 'Please enter a name' : null ,
              onChanged: (val) => setState(() =>_currentName =val),
            ),
            SizedBox(height: 20.0,),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: textInputDecoration.copyWith(hintText: 'Item Quantity'),
              validator:numberValidator,
              onChanged: (val) => setState(() =>_currentQuantity =num.tryParse(val)),
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              color: Colors.pink[400],
              child: Text(
                  'update',
                  style: TextStyle(color: Colors.white)
              ),
              onPressed: () async {
                if(_formKey.currentState.validate()){
                  print('Current Name : $_currentName');
                  print('Current Quantity : $_currentQuantity');

                  _addItem(_currentName,_currentQuantity);
                  Navigator.pop(context);
                }

              },
            ),
          ],
        ),
      ),
    );
  }
}
