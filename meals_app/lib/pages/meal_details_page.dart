import 'package:flutter/material.dart';
import '../molecules/sectiobn_title.dart';
import '../models/meal.dart';

class MealDetailsPage extends StatelessWidget {
  static const routeName = '/meal_detail';
  final Function toggleFavorite;
  final Function isFavorite;

  MealDetailsPage(this.toggleFavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 250,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SectionTitle('Ingredients'),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(10),
            height: 125,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(meal.ingredients[index])),
              ),
              itemCount: meal.ingredients.length,
            ),
          ),
          SectionTitle('Steps'),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(10),
            height: 125,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemBuilder: (ctx, index) => ListTile(
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
                title: Text(meal.steps[index]),
              ),
              itemCount: meal.steps.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(meal.id) ? Icons.star : Icons.star_border),
        onPressed: () => toggleFavorite(meal.id),
      ),
    );
  }
}
