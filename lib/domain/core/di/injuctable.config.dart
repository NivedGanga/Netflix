// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/application/downloads/downloads_bloc.dart' as _i7;
import 'package:netflix/application/search/search_bloc.dart' as _i8;
import 'package:netflix/domain/downloads/i_download_repo.dart' as _i3;
import 'package:netflix/domain/search/search_service.dart' as _i5;
import 'package:netflix/infrastructure/downloads/downloads_repository.dart'
    as _i4;
import 'package:netflix/infrastructure/search/search_impl.dart' as _i6;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadClass>(() => _i4.DownloadsRepository());
    gh.lazySingleton<_i5.SearchService>(() => _i6.SearchImpl());
    gh.factory<_i7.DownloadsBloc>(
        () => _i7.DownloadsBloc(gh<_i3.IDownloadClass>()));
    gh.factory<_i8.SearchBloc>(() => _i8.SearchBloc(
          gh<_i3.IDownloadClass>(),
          gh<_i5.SearchService>(),
        ));
    return this;
  }
}
