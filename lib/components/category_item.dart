import 'package:flutter/material.dart';
import 'package:receitas_app/utils/app-routes.dart';
import 'package:receitas_app/views/categories_meals_view.dart';

import '../models/categoryModel.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

void _selectCategory(BuildContext context, Category category) {
  Navigator.of(context).pushNamed(
    AppRoutes.CATEGORIES_MEALS,
    arguments: {'category': category}, // Passando o argumento como um mapa
  );
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      onTap: () => _selectCategory(context, category),
      child: Container(
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [category.color.withOpacity(0.5), category.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
      ),
    );
  }
}
