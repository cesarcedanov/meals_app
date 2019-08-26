import 'package:flutter/material.dart';
import '../molecules/stack_image_text.dart';
import '../models/meal.dart';

class MealDetailsPage extends StatelessWidget {
  static const routeName = '/meal_detail';

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            StackImageText(meal.imageUrl, meal.title),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Text(
                  'INGREDIENTS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ...meal.ingredients.map((ingredient) {
                  return Text(ingredient,
                      style: TextStyle(
                        fontSize: 14,
                      ));
                })
              ],
            ),
            Divider(
              height: 10,
              color: Colors.black,
            ),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                Text(
                  'STEPS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ...meal.steps.map((step) {
                  return Row(
                    children: <Widget>[
                      Icon(Icons.check),
                      Text(
                        step,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      )
                    ],
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
