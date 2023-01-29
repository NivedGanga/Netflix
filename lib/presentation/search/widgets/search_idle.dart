import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/common_widgets/main_movie_tile/title_text.dart';

const image =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/uO6ZUez70Twan92pqoV60T9kiGH.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        const TitleText(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const TopSearchItemWidget();
            },
            separatorBuilder: (context, index) {
              return kheight;
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopSearchItemWidget extends StatelessWidget {
  const TopSearchItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.33,
          height: width * 0.18,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
        ),
        kwidth,
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Icon(
          Icons.play_circle_outline_sharp,
          size: 45,
          color: Color.fromARGB(223, 255, 255, 255),
        )
      ],
    );
  }
}
