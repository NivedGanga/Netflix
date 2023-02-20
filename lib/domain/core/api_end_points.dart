import 'package:netflix/core/string.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '${baseUrl}trending/all/day?api_key=$apiKey';
  static const search = '${baseUrl}search/movie?api_key=$apiKey&language=en-US';
}
