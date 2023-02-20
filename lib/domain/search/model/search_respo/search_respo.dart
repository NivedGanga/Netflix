import 'package:json_annotation/json_annotation.dart';

part 'search_respo.g.dart';

@JsonSerializable()
class SearchRespo {
  @JsonKey(name: 'results')
  List<SearchResultData> results;

  SearchRespo({
    this.results = const [],
  });

  factory SearchRespo.fromJson(Map<String, dynamic> json) {
    return _$SearchRespoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespoToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;

  SearchResultData({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}