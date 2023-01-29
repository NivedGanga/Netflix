import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class SearchMovieCard extends StatelessWidget {
  const SearchMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageLinks[1]),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(6)),
    );
  }
}