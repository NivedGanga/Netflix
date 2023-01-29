import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';
import 'package:netflix/domain/failure/main_failure.dart';

abstract class IDownloadClass {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage();
}
