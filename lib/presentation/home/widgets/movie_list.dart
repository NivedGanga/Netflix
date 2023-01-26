import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors/constants.dart';
import 'package:netflix/presentation/common_widgets/main_movie_tile/main_movie_tile.dart';
import 'package:netflix/presentation/common_widgets/main_movie_tile/title_text.dart';

class MovieListView extends StatelessWidget {
  final String title;
  const MovieListView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        TitleText(
          title: title,
        ),
        kheight,
        SizedBox(
          width: double.infinity,
          height: size.width * 0.3 * 5 / 3,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const MainMovieCard();
            },
            separatorBuilder: (context, index) {
              return kwidth;
            },
            itemCount: 200,
          ),
        ),
      ],
    );
  }
}
