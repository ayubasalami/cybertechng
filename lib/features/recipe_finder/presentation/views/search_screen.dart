import 'package:cybertechng/features/recipe_finder/presentation/widgets/app_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../../providers/providers.dart';
import '../widgets/featured_recipe_widget.dart';
import '../widgets/recommended_recipes_widget.dart';
import '../widgets/search_screen_header.dart';
import '../widgets/searched_recipe_widget.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    controller.addListener(_onSearchChanged);
    super.initState();
  }

  void _onSearchChanged() {
    final query = controller.text.trim();
    ref.read(mealSearchViewModelProvider.notifier).onQueryChanged(query);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final recipe = ref.watch(fetchCommunitiesProvider);
    final featured = ref.watch(fetchRandomMealProvider);
    final viewModel = ref.watch(mealSearchViewModelProvider);
    final isSearching = controller.text.trim().isNotEmpty;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              SearchScreenHeader(),
              const SizedBox(height: 20),
              AppSearchBar(controller: controller),
              const SizedBox(height: 40),

              featured.when(
                data: (data) {
                  return FeaturedRecipeWidget(data: data);
                },
                error: (err, str) {
                  return FeaturedRecipeWidget(data: []);
                },
                loading: () {
                  return FeaturedRecipeShimmerWidget();
                },
              ),

              const SizedBox(height: 20),
              if (!isSearching)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recommended for you",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

              Expanded(
                child: Builder(
                  builder: (_) {
                    if (isSearching) {
                      return viewModel.when(
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (e, _) => Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 200,
                                child: LottieBuilder.asset(
                                  'assets/json/not_found.json',
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Something went wrong',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 4),
                            ],
                          ),
                        ),
                        data: (meals) {
                          if (meals.isEmpty) {
                            return const Center(
                              child: Text(
                                'No meals found. Please try a different keyword',
                              ),
                            );
                          }
                          return SearchedRecipeWidget(meals: meals);
                        },
                      );
                    }

                    return recipe.when(
                      data: (data) {
                        return Column(
                          children: [
                            const SizedBox(height: 25),
                            Expanded(child: RecommendedRecipes(data: data)),
                          ],
                        );
                      },
                      error: (err, str) {
                        return RecommendedRecipeError(
                          message: 'check your internet connection',
                          onRetry: () {
                            ref.invalidate(fetchCommunitiesProvider);
                          },
                        );
                      },
                      loading: () {
                        return RecommendedShimmer();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
