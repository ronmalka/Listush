import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listush/models/item.dart';
import 'package:listush/shared/constants.dart';

class EditForm extends StatefulWidget {

  final Item item;

  EditForm({this.item});

  @override
  _EditFormState createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {

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


  @override
  Widget build(BuildContext context) {

    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Edit your item',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                initialValue: widget.item.name,
                decoration: textInputDecoration.copyWith(hintText: 'Item Name'),
                validator:(val) => val.isEmpty ? 'Please enter a name' : null ,
                onChanged: (val) => setState(() =>_currentName =val),
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                initialValue: widget.item.quantity.toString(),
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

                    if(widget.item.name != null){
                      widget.item.name = _currentName;
                    }
                    if(widget.item.quantity != null){
                      widget.item.quantity = _currentQuantity;
                    }
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
