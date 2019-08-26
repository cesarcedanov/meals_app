import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../molecules/stack_image_text.dart';
import '../molecules/brief_meal_details.dart';
import '../pages/meal_details_page.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  MealItem({@required this.meal});

  void onSelectMeal(ctx) {
    Navigator.of(ctx).pushNamed(MealDetailsPage.routeName, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelectMeal(context),
      splashColor: Colors.greenAccent,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            StackImageText(meal.imageUrl, meal.title),
            BriefMealDetails(
                meal.duration, meal.complexity, meal.affordability),
          ],
        ),
      ),
    );
  }
}
