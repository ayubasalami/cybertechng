import 'package:cybertechng/features/recipe_finder/data/models/recipe_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/dio_service.dart';
import '../features/recipe_finder/data/models/featured_meal_model.dart';
import '../features/recipe_finder/data/models/meal_detail_model.dart';
import '../features/recipe_finder/data/repository/recipe_repository.dart';
import '../features/recipe_finder/presentation/view_models/meal_search_view_model.dart';

final dioServiceProvider = Provider<DioService>((ref) {
  return DioService();
});
final recipeRepositoryProvider = Provider<RecipeRepository>((ref) {
  final dio = ref.watch(dioServiceProvider).client;
  return RecipeRepository(dio: dio);
});

final fetchCommunitiesProvider = FutureProvider<List<RecipeModel>>((ref) {
  final recipeRepo = ref.watch(recipeRepositoryProvider);
  return recipeRepo.fetchRecipes();
});
final fetchRandomMealProvider = FutureProvider<List<Meal>>((ref) {
  final recipeRepo = ref.watch(recipeRepositoryProvider);
  return recipeRepo.fetchRandom();
});
final mealDetailProvider = FutureProvider.family<MealDetailResponse, String>((
  ref,
  id,
) {
  final recipeRepo = ref.watch(recipeRepositoryProvider);
  return recipeRepo.getRecipeDetailById(id);
});

final mealSearchViewModelProvider =
    StateNotifierProvider<MealSearchViewModel, AsyncValue<List<Meal>>>((ref) {
      final repo = ref.watch(recipeRepositoryProvider);
      return MealSearchViewModel(repo);
    });
