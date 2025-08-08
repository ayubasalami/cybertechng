import 'package:cybertechng/features/recipe_finder/data/models/meal_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../../providers/providers.dart';
import 'meal_detail_screen.dart';

class MealDetailPage extends ConsumerWidget {
  final String id;

  const MealDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncMeal = ref.watch(mealDetailProvider(id));

    return asyncMeal.when(
      data: (meal) => MealDetailScreen(
        mealName: meal.meals!.first.strMeal!,
        imageUrl: meal.meals!.first.strMealThumb!,
        description: meal.meals!.first.strInstructions!,
        ingredients: meal.meals!.first.getIngredients(),
      ),
      loading: () => RecipeDetailShimmer(),
      error: (e, st) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
                child: LottieBuilder.asset('assets/json/not_found.json'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Something went wrong',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
