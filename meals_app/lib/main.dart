import 'package:flutter/material.dart';
import './pages/filters_page.dart';
import './pages/categories_page.dart';
import './pages/category_meals_page.dart';
import './pages/meal_details_page.dart';
import './pages/tab_pages.dart';

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
        '/': (ctx) => TabsPage(),
        CategoryMealsPage.routeName: (ctx) => CategoryMealsPage(),
        MealDetailsPage.routeName: (ctx) => MealDetailsPage(),
        FiltersPage.routeName: (ctx) => FiltersPage(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(builder: (ctx) => CategoriesPage());
      },
    );
  }
}
