import 'package:flutter/material.dart';
import 'category_tile.dart';
import 'package:listush/shared/constants.dart';

class CategoriesList extends StatefulWidget {
  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: categories.map((c) => CategoryTile(category: c)).toList(),
    ) ;
  }
}

