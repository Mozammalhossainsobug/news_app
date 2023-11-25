import 'package:flutter/material.dart';

class HomeFontImage extends StatefulWidget {
  const HomeFontImage({super.key});

  @override
  State<HomeFontImage> createState() => _HomeFontImageState();
}

class _HomeFontImageState extends State<HomeFontImage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=original',
              ),
            ),
          ),
        ),
        Container(
          margin:
              EdgeInsets.fromLTRB(size.width * .04, size.height * .24, 0, 0),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'News of the day',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ),
        Container(
          margin:
              EdgeInsets.fromLTRB(size.width * .04, size.height * .34, 0, 0),
          padding: const EdgeInsets.only(left: 10),
          child: const Row(
            children: [
              Text(
                'Learn More',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_right_alt_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
