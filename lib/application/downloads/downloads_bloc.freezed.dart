// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImageEvent value)
        getDownloadsImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImageEvent value)? getDownloadsImageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImageEvent value)? getDownloadsImageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDownloadsImageEventCopyWith<$Res> {
  factory _$$_GetDownloadsImageEventCopyWith(_$_GetDownloadsImageEvent value,
          $Res Function(_$_GetDownloadsImageEvent) then) =
      __$$_GetDownloadsImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadsImageEventCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$_GetDownloadsImageEvent>
    implements _$$_GetDownloadsImageEventCopyWith<$Res> {
  __$$_GetDownloadsImageEventCopyWithImpl(_$_GetDownloadsImageEvent _value,
      $Res Function(_$_GetDownloadsImageEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDownloadsImageEvent implements _GetDownloadsImageEvent {
  const _$_GetDownloadsImageEvent();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsImageEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDownloadsImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImageEvent,
  }) {
    return getDownloadsImageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImageEvent,
  }) {
    return getDownloadsImageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImageEvent,
    required TResult orElse(),
  }) {
    if (getDownloadsImageEvent != null) {
      return getDownloadsImageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImageEvent value)
        getDownloadsImageEvent,
  }) {
    return getDownloadsImageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImageEvent value)? getDownloadsImageEvent,
  }) {
    return getDownloadsImageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImageEvent value)? getDownloadsImageEvent,
    required TResult orElse(),
  }) {
    if (getDownloadsImageEvent != null) {
      return getDownloadsImageEvent(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsImageEvent implements DownloadsEvent {
  const factory _GetDownloadsImageEvent() = _$_GetDownloadsImageEvent;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downlaodList => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Downloads>>>
      get downloadFailureSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downlaodList,
      Option<Either<MainFailure, List<Downloads>>>
          downloadFailureSuccessOption});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downlaodList = null,
    Object? downloadFailureSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlaodList: null == downlaodList
          ? _value.downlaodList
          : downlaodList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadFailureSuccessOption: null == downloadFailureSuccessOption
          ? _value.downloadFailureSuccessOption
          : downloadFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadStateCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$_DownloadStateCopyWith(
          _$_DownloadState value, $Res Function(_$_DownloadState) then) =
      __$$_DownloadStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downlaodList,
      Option<Either<MainFailure, List<Downloads>>>
          downloadFailureSuccessOption});
}

/// @nodoc
class __$$_DownloadStateCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$_DownloadState>
    implements _$$_DownloadStateCopyWith<$Res> {
  __$$_DownloadStateCopyWithImpl(
      _$_DownloadState _value, $Res Function(_$_DownloadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downlaodList = null,
    Object? downloadFailureSuccessOption = null,
  }) {
    return _then(_$_DownloadState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlaodList: null == downlaodList
          ? _value._downlaodList
          : downlaodList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadFailureSuccessOption: null == downloadFailureSuccessOption
          ? _value.downloadFailureSuccessOption
          : downloadFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadState implements _DownloadState {
  const _$_DownloadState(
      {required this.isLoading,
      required final List<Downloads> downlaodList,
      required this.downloadFailureSuccessOption})
      : _downlaodList = downlaodList;

  @override
  final bool isLoading;
  final List<Downloads> _downlaodList;
  @override
  List<Downloads> get downlaodList {
    if (_downlaodList is EqualUnmodifiableListView) return _downlaodList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downlaodList);
  }

  @override
  final Option<Either<MainFailure, List<Downloads>>>
      downloadFailureSuccessOption;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downlaodList: $downlaodList, downloadFailureSuccessOption: $downloadFailureSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downlaodList, _downlaodList) &&
            (identical(other.downloadFailureSuccessOption,
                    downloadFailureSuccessOption) ||
                other.downloadFailureSuccessOption ==
                    downloadFailureSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_downlaodList),
      downloadFailureSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      __$$_DownloadStateCopyWithImpl<_$_DownloadState>(this, _$identity);
}

abstract class _DownloadState implements DownloadsState {
  const factory _DownloadState(
      {required final bool isLoading,
      required final List<Downloads> downlaodList,
      required final Option<Either<MainFailure, List<Downloads>>>
          downloadFailureSuccessOption}) = _$_DownloadState;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downlaodList;
  @override
  Option<Either<MainFailure, List<Downloads>>> get downloadFailureSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
