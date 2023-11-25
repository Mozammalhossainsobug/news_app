import 'package:flutter/material.dart';

class DiscoverTitle extends StatelessWidget {
  const DiscoverTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Discover',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 45,
            letterSpacing: .5,
          ),
        ),
        Text(
          'news from all over the world',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
