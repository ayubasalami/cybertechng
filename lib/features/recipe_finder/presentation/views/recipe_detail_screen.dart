import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../widgets/ingredient_item_widget.dart';

class MealDetailScreen extends StatelessWidget {
  final String mealName;
  final String imageUrl;
  final String description;
  final List<String> ingredients;
  const MealDetailScreen({
    super.key,
    required this.mealName,
    required this.imageUrl,
    required this.description,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: FancyShimmerImage(
              imageUrl: imageUrl,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              boxFit: BoxFit.cover,
            ),
          ),
          // Foreground content
          Positioned.fill(
            top: MediaQuery.of(context).size.height * 0.35,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mealName,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Ingredients",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: ingredients
                          .map(
                            (ingredient) => IngredientItemWidget(
                              title: ingredient,
                              label: '',
                            ),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Instructions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // AppBar Back Button
          Positioned(
            top: 40,
            left: 16,
            child: CircleAvatar(
              backgroundColor: Colors.black.withOpacity(0.5),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
