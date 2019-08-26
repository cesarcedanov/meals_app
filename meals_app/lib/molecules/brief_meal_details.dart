import 'package:flutter/material.dart';
import '../models/meal.dart';

class BriefMealDetails extends StatelessWidget {
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  BriefMealDetails(this.duration, this.complexity, this.affordability);

  String get complexityText {
    switch (complexity) {
      case Complexity.Easy:
        return 'Easy';
      case Complexity.Medium:
        return 'Medium';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affodabilityText {
    switch (affordability) {
      case Affordability.Cheap:
        return 'Cheap';
      case Affordability.Pricey:
        return 'Pricey';
      case Affordability.Expensive:
        return 'Expensive';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(Icons.schedule),
              const SizedBox(
                width: 6,
              ),
              Text('$duration min'),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(Icons.work),
              const SizedBox(
                width: 6,
              ),
              Text('$complexityText'),
            ],
          ),
          Row(
            children: <Widget>[
              const Icon(Icons.attach_money),
              const SizedBox(
                width: 6,
              ),
              Text('$affodabilityText'),
            ],
          ),
        ],
      ),
    );
  }
}
