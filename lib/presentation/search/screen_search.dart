import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              borderRadius: BorderRadius.circular(10),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              backgroundColor: const Color.fromARGB(255, 35, 35, 35),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                BlocProvider.of<SearchBloc>(context)
                    .add(SearchMovie(movieQuery: value));
              },
              
            ),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResult.isEmpty) {
                  return Expanded(
                    child: SearchIdle(),
                  );
                } else {
                  return Expanded(
                    child: SearchResult(),
                  );
                }
              },
            ),
          ],
        ),
      )),
    );
  }
}
