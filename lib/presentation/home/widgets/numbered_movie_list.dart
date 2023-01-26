import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:netflix/presentation/common_widgets/main_movie_tile/main_movie_tile.dart';

class NumberedMovieList extends StatelessWidget {
  NumberedMovieList({super.key});
  int itemcount = 10;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: List.generate(itemcount, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                SizedBox(
                  width: index * 150,
                ),
                _NumberedMovieListTileWidget(
                  index: --itemcount,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _NumberedMovieListTileWidget extends StatelessWidget {
  final int index;
  const _NumberedMovieListTileWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        const MainMovieCard(),
        Transform.translate(
          offset: const Offset(-40, 0),
          child: BorderedText(
            strokeWidth: 3,
            strokeColor: Color.fromARGB(192, 255, 255, 255),
            child: Text(
              (index + 1).toString(),
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
