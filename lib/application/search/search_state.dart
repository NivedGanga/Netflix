part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchResult,
    required List<Downloads> ideaList,
    required bool isloading,
    required bool isError,
  }) = _SearchState;
  factory SearchState.initial() => const SearchState(
        searchResult: [],
        ideaList: [],
        isloading: false,
        isError: false,
      );
}
