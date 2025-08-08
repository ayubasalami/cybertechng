import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../data/models/featured_meal_model.dart';
import '../views/recipe_detail_page.dart';

class FeaturedRecipeWidget extends StatelessWidget {
  final List<Meal> data;
  const FeaturedRecipeWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final meal = data[0];
    return Container(
      height: 200,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        fit: StackFit.expand,
        children: [
          FancyShimmerImage(
            imageUrl: meal.strMealThumb ?? '',
            boxFit: BoxFit.cover,
            shimmerBaseColor: Colors.grey[300]!,
            shimmerHighlightColor: Colors.grey[100]!,
            shimmerBackColor: Colors.grey[200]!,
          ),
          Container(color: Colors.black54),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal.strMeal ?? "Free Delivery For Spaghetti",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Best Seller",
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MealDetailPage(id: meal.idMeal!),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.limeAccent,
                  ),
                  child: const Text(
                    "View Now",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedRecipeShimmerWidget extends StatelessWidget {
  const FeaturedRecipeShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: 200,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 180, height: 20, color: Colors.white),
            const SizedBox(height: 10),
            Container(width: 120, height: 14, color: Colors.white),
            const Spacer(),
            Container(
              width: 100,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
