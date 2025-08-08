import 'package:flutter/material.dart';

class IngredientItemWidget extends StatelessWidget {
  final String title;
  final String label;

  const IngredientItemWidget({required this.title, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
