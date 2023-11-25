import 'package:flutter/material.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo({super.key, required this.authorName});
  final String authorName;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(size.width * .009),
      width: size.width * .4,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage(
                'https://st3.depositphotos.com/19428878/37071/v/450/depositphotos_370714622-stock-illustration-businessman-icon-vector-male-avatar.jpg'),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                authorName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  overflow: TextOverflow.fade,
                ),
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
