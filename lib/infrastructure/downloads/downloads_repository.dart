import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/failure/main_failure.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';

@LazySingleton(as: IDownloadClass)
class DownloadsRepository extends IDownloadClass {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Downloads> downloadList = [];
        (response.data['results'] as List)
            .map((e) =>
                downloadList.add(Downloads.fromJson(e as Map<String, dynamic>)))
            .toList();
        //    log(downloadList.toString());
        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return Left(MainFailure.clientFailure());
    }
  }
}
