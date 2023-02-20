import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/core/string.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';
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
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isloading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state.isError) {
                return Center(
                  child: Text('Something went wrong'),
                );
              }
              if (state.ideaList.isEmpty) {
                return Center(
                  child: Text('Something went wrong'),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                 
                  return TopSearchItemWidget(
                    listItem: state.ideaList[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return kheight;
                },
                itemCount: state.ideaList.length,
              );
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemWidget extends StatelessWidget {
  TopSearchItemWidget({
    super.key,
    required this.listItem,
  });
  final Downloads listItem;

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
              image: DecorationImage(
                  image: NetworkImage(imageBaseUrl + listItem.backdropPath),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5)),
        ),
        kwidth,
        Expanded(
          child: Text(
            listItem.originalname,
            style: TextStyle(
              color: Colors.white,
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
