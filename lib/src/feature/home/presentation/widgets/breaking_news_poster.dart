import 'package:flutter/material.dart';

class BreakingNewsPoster extends StatelessWidget {
  const BreakingNewsPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Breaking News',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
              wordSpacing: 0.1,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'More',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
