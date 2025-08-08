import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RecipeDetailShimmer extends StatelessWidget {
  const RecipeDetailShimmer({super.key});

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
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.grey,
              ),
            ),
          ),

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
                    shimmerBox(width: 180, height: 24),
                    const SizedBox(height: 24),
                    shimmerBox(width: 100, height: 16),
                    const SizedBox(height: 16),
                    ...List.generate(
                      6,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: shimmerBox(width: 200, height: 14),
                      ),
                    ),
                    const SizedBox(height: 24),
                    shimmerBox(width: 120, height: 18),
                    const SizedBox(height: 12),
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: shimmerBox(width: double.infinity, height: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

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

  Widget shimmerBox({double width = double.infinity, required double height}) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
