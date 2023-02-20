import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/i_download_repo.dart';
import 'package:netflix/domain/downloads/model/downloads.dart';
import 'package:netflix/domain/failure/main_failure.dart';
import 'package:netflix/presentation/downloads/widgets/error_notification.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadClass downloadRepo;
  DownloadsBloc(this.downloadRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImageEvent>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downloadFailureSuccessOption: const None()));
      final downloadOption = await downloadRepo.getDownloadsImage();
      //  log(downloadOption.toString());
      emit(downloadOption.fold(
        (failure) {
          if (failure == const MainFailure.serverFailure()) {
            errorNotification(text: 'Server not responding');
          } else {
            errorNotification(text: 'Connection error');
          }

          return state.copyWith(
            isLoading: false,
            downloadFailureSuccessOption: Some(Left(failure)),
          );
        },
        (success) {
          return state.copyWith(
              isLoading: false,
              downloadFailureSuccessOption: Some(Right(success)),
              downlaodList: success);
        },
      ));
    });
  }
}
