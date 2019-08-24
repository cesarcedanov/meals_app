import 'package:flutter/material.dart';
import 'package:meals_app/pages/meals.dart';
import './pages/categories.dart';
import './pages/meals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals Recipes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueGrey,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
              ),
            ),
      ),
      // home: CategoriesPage(),
      initialRoute: '/',
      routes: {
        CategoriesPage.routeName: (ctx) => CategoriesPage(),
        Meals.routeName: (ctx) => Meals(),
      },
    );
  }
}
