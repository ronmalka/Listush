import 'package:listush/models/item.dart';

class Category{
  final String name;
  final String iconPath;
  List<Item> items;

  Category({this.name, this.iconPath, this.items });

}