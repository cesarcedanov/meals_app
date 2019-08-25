import 'package:flutter/material.dart';

class CategoryMealsPage extends StatelessWidget {
  static const routeName = '/category_meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsPage(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    // final categoryId = routeArgs['id'];
    return Scaffold(
        appBar: AppBar(
          title: Text('$categoryTitle recipes'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(index.toString());
          },
          itemCount: 10,
        ));
  }
}
