import 'package:flutter/material.dart';

class CategoriesMealsView extends StatelessWidget {
  final String nomeCategoria;
  const CategoriesMealsView({super.key, required this.nomeCategoria});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
      ),
      body: Center(
        child: Text(this.nomeCategoria),
      ),
    );
  }
}
