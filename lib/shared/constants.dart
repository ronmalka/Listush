import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listush/models/category.dart';
import 'package:listush/models/item.dart';
List<Item> testItems = [
  Item(name: 'Apple' , quantity: 4, state: false),
  Item(name: 'Banan' , quantity: 4, state: false),
  Item(name: 'Sabon' , quantity: 4, state: true),
] ;

List<Category> categories = [
  Category(name : 'Canned' , iconPath : 'assets/canned-food.png',items: testItems),
  Category(name : 'Cleaning' , iconPath : 'assets/cleaning-tools.png',items: testItems),
  Category(name : 'Hot Drink' , iconPath : 'assets/coffee.png',items: testItems),
  Category(name : 'Legumes and Grains' , iconPath : 'assets/grain.png',items: testItems),
  Category(name : 'Disposable' , iconPath : 'assets/coffee-cups.png',items: testItems),
  Category(name : 'Dairy and Egg' , iconPath : 'assets/dairy-products.png',items: testItems),
  Category(name : 'Fish' , iconPath : 'assets/fish.png',items: testItems),
  Category(name : 'Frozen' , iconPath : 'assets/frozen-goods.png',items: testItems),
  Category(name : 'Fruit' , iconPath : 'assets/fruits.png',items: testItems),
  Category(name : 'Meat and Chiken' , iconPath : 'assets/meat (2).png',items: testItems),
  Category(name : 'Bread' , iconPath : 'assets/rye-bread.png',items: testItems),
  Category(name : 'Toiletries' , iconPath : 'assets/shampoo.png',items: testItems),
  Category(name : 'Beverages' , iconPath : 'assets/soft-drink.png',items: testItems),
  Category(name : 'Vegetables' , iconPath : 'assets/vegetables.png',items: testItems),
  Category(name : 'Others' , iconPath : 'assets/shopping-bag.png',items: testItems),
];

final inputDecoration = BoxDecoration(
  color: Colors.redAccent[300],
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white,
      blurRadius: 6.0,
      offset: Offset(0, 2)
    )
  ]
);

const textInputDecoration = InputDecoration(
    filled: true,
    hintStyle: TextStyle(
      color: Colors.black
    ),
    enabledBorder:OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.redAccent,
            width: 2.0
        )
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.pink,
            width: 2.0
        )
    )

);




