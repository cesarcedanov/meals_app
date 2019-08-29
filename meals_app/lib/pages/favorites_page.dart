import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../organism/meal_item.dart';

class FavoritesPage extends StatelessWidget {
  final List<Meal> favoritedMeals;
  FavoritesPage(this.favoritedMeals);
  @override
  Widget build(BuildContext context) {
    if (favoritedMeals.isEmpty) {
      return Center(
        child:
            Text('You dont have any favorite - start saving meals as favorite'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            meal: favoritedMeals[index],
          );
        },
        itemCount: favoritedMeals.length,
      );
    }
  }
}
