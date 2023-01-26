import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constants.dart';

class MainMovieCard extends StatelessWidget {
  const MainMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      height: size.width * 0.3 * 5 / 3,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageLinks[1]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(6)),
    );
  }
}
