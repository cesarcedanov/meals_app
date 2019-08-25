import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

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
    final categoryId = routeArgs['id'];

    final mealsByCategoryId = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('$categoryTitle recipes'),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              meal: mealsByCategoryId[index],
            );
          },
          itemCount: mealsByCategoryId.length,
        ));
  }
}
