import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/common_widgets/main_movie_tile/main_movie_tile.dart';
import 'package:netflix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_movie_card..dart';
import 'package:netflix/presentation/common_widgets/main_movie_tile/title_text.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const TitleText(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: GridView.count(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          crossAxisCount: 3,
          shrinkWrap: true,
          childAspectRatio: 3 / 5,
          children: List.generate(20, (index) {
            return const SearchMovieCard();
          }),
        ))
      ],
    );
  }
}
