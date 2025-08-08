import 'package:dio/dio.dart';

import '../models/featured_meal_model.dart';
import '../models/meal_detail_model.dart';
import '../models/meal_response.dart';
import '../models/recipe_model.dart';

class RecipeRepository {
  final Dio dio;

  RecipeRepository({required this.dio});

  Future<List<RecipeModel>> fetchRecipes() async {
    try {
      final response = await dio.get('/search.php?f=a');
      final data = response.data;

      if (data['meals'] == null) return [];

      return (data['meals'] as List)
          .map((mealJson) => RecipeModel.fromJson(mealJson))
          .toList();
    } catch (e) {
      throw Exception('Failed to fetch recipes: $e');
    }
  }

  Future<List<Meal>> fetchRandom() async {
    try {
      final response = await dio.get('/random.php');
      final data = response.data;

      if (data['meals'] == null) return [];

      return FeaturedMealModel.fromJson(response.data).meals ?? [];
    } catch (e) {
      throw Exception('Failed to fetch recipes: $e');
    }
  }

  Future<List<Meal>> searchRecipe(String query) async {
    try {
      final response = await dio.get('/search.php?s=$query');
      final data = MealResponse.fromJson(response.data);
      return data.meals ?? [];
    } catch (e) {
      throw Exception('Failed to search recipe: $e');
    }
  }

  Future<MealDetailResponse> getRecipeDetailById(String id) async {
    try {
      final response = await dio.get('/lookup.php?i=$id');
      return MealDetailResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch details: $e');
    }
  }
}
