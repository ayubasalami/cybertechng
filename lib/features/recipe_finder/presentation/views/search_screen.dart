import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/providers.dart';
import '../widgets/widgets.dart';

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
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final recipe = ref.watch(fetchCommunitiesProvider);
    final featured = ref.watch(fetchRandomMealProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Header(),
              const SizedBox(height: 20),
              SearchBar2(controller: controller),
              const SizedBox(height: 40),

              featured.when(
                data: (data) {
                  return PromoBanner(data: data);
                },
                error: (err, str) {
                  return PromoBanner(data: []);
                },
                loading: () {
                  return PromoBannerShimmer();
                },
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recommended for you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "See more",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),

              Expanded(
                child: recipe.when(
                  data: (data) {
                    return Column(
                      children: [
                        const SizedBox(height: 25),
                        Expanded(child: RecommendedRecipes(data: data)),
                      ],
                    );
                  },
                  error: (err, str) {
                    return RecommendedError(
                      message: 'check your internet connection',
                      onRetry: () {
                        ref.refresh(fetchCommunitiesProvider);
                      },
                    );
                  },
                  loading: () {
                    return RecommendedShimmer();
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
