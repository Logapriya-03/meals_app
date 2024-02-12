import 'package:flutter/material.dart';
import 'package:meals_app/data/categories_data.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:meals_app/widgets/category_grid_item.dart';
import 'package:meals_app/model/category_model.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, CategoryModel categoryModel) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(categoryModel.id))
        .toList();

    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealsScreen(title: categoryModel.title, meals: filteredMeals)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick your category'),
      ),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          ...availableCategories
              .map((category) => CategoryGridItem(
                    categoryModel: category,
                    selectCategory: () {
                      _selectCategory(context,category);
                    },
                  ))
              .toList()
          // for(final category in availableCategories)
          //   CategoryGridItem(categoryModel: category)
        ],
      ),
    );
  }
}
