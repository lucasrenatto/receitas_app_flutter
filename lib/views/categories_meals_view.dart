import 'package:flutter/material.dart';
import 'package:receitas_app/components/meal_item.dart';

import '../data/dummy_data.dart';
import '../models/categoryModel.dart';

class CategoriesMealsView extends StatelessWidget {
  CategoriesMealsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Recupere o argumento passado para a rota
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final category = arguments['category'] as Category;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return MealItem(meal: categoryMeals[index]);
          }),
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
