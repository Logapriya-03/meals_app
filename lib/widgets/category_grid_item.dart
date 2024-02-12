import 'package:flutter/material.dart';
import 'package:meals_app/model/category_model.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.categoryModel, required this.selectCategory});

  final CategoryModel categoryModel;
  final void Function() selectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectCategory,
      borderRadius: BorderRadius.circular(16),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            categoryModel.color.withOpacity(0.55),
            categoryModel.color.withOpacity(0.9),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          categoryModel.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
