import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/featured_meal_model.dart';
import '../../data/repository/recipe_repository.dart';

class MealSearchViewModel extends StateNotifier<AsyncValue<List<Meal>>> {
  final RecipeRepository _repo;
  Timer? _debounce;

  MealSearchViewModel(this._repo) : super(const AsyncValue.data([]));
  void onQueryChanged(String query) {
    if (query.trim().isEmpty) {
      _debounce?.cancel();
      state = const AsyncValue.data([]);
      return;
    }

    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 900), () {
      search(query);
    });
  }

  Future<void> search(String query) async {
    state = const AsyncValue.loading();
    try {
      final meals = await _repo.searchRecipe(query);
      state = AsyncValue.data(meals);
    } catch (e, st) {
      state = AsyncValue.error(e.toString(), st);
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
