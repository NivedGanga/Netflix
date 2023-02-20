import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/search/model/search_respo/search_respo.dart';
import 'package:netflix/domain/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchRespo>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {
          'query': movieQuery,
        },
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        SearchRespo searchRespo = SearchRespo.fromJson(response.data);
        return Right(searchRespo);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return Left(MainFailure.clientFailure());
    }
  }
}
