import 'package:flutter/material.dart';

class SearchScreenHeader extends StatelessWidget {
  const SearchScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Hello User",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notification_add_sharp),
        ),
      ],
    );
  }
}
