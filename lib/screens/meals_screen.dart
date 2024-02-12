import 'package:flutter/material.dart';
import 'package:meals_app/model/meals_model.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({required this.title, required this.meals, super.key});

  final String title;
  final List<MealsModel> meals;


  @override
  Widget build(BuildContext context) {

    Widget content  = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Currently nothing is showned here',
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground
          ),
          ),
          SizedBox(height: 16),
          Text('Try Selecting a different category',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
            ),
          )
        ],
      ),
    );

    if(meals.isNotEmpty){
      content = ListView.builder(itemCount: meals.length,
        itemBuilder: (context, index){
        return Text(meals[index].title);
        },
      );

    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
