import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';
import 'package:netflix/domain/search/search_service.dart';

import '../../domain/search/model/search_respo/search_respo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadClass downloadsService;
  final SearchService searchService;
  SearchBloc(this.downloadsService, this.searchService)
      : super(SearchState.initial()) {
    //idle
    on<Initialize>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final _result = await downloadsService.getDownloadsImage();
      final newState = _result.fold((failure) {
        return state.copyWith(isError: true, isloading: false);
      }, (result) {
        return state.copyWith(isloading: false, ideaList: result);
      });
      emit(newState);
    });
    //search
    on<SearchMovie>((event, emit) async {
      final searchResponse =
          await searchService.searchMovies(movieQuery: event.movieQuery);
      emit(state.copyWith(isloading: true));
      final newState = searchResponse.fold((failure) {
        return state.copyWith(isError: true, isloading: false);
      }, (result) {
        return state.copyWith(isloading: false, searchResult: result.results);
      });
      emit(newState);
    });
  }
}
