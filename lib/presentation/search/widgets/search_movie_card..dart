import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/string.dart';

class SearchMovieCard extends StatelessWidget {
  SearchMovieCard({super.key, required this.imagepath});
  final imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageBaseUrl + imagepath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(6)),
    );
  }
}
