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
    return Container(
      height: size.height * .45,
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://media.cnn.com/api/v1/images/stellar/prod/230621042149-01-cristiano-ronaldo-euro-200-apps-062023-restricted.jpg?c=original',
            ),
          )),
    );
  }
}
