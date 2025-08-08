import 'package:flutter/material.dart';

import '../../data/models/recipe_model.dart';
import '../views/meal_detail_page.dart';

class RecommendedRecipes extends StatelessWidget {
  final List<RecipeModel> data;

  const RecommendedRecipes({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double itemHeight = 220;
        final totalHeight = (itemHeight * 2) + 16;

        return SizedBox(
          height: totalHeight,
          child: GridView.builder(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 200,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, index) {
              final item = data[index];
              return GestureDetector(
                onTap: () {
                  final meal = data[index];
                  print(meal.id);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MealDetailPage(id: meal.id),
                    ),
                  );
                },
                child: Container(
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 5),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(16),
                            bottom: Radius.circular(16),
                          ),
                          child: Image.network(
                            item.imageUrl ?? '',
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, _) =>
                                const Icon(Icons.image_not_supported),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 8,
                        ),
                        child: Text(
                          item.category ?? '',
                          style: const TextStyle(color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
