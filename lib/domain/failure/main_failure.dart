
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/core/constants.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  factory MainFailure.clientFailure() = _ClientFailure;
  const factory MainFailure.serverFailure() = _serverFailure;
}

     //ScaffoldMessenger.of(scaffoldKey.currentState!.context).showSnackBar(SnackBar(content: Text('data')));
  