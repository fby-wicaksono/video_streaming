import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_streaming/data/model/video_list_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeStateInitial;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.success(VideoListModel videoListModel) = HomeStateSuccess;
  const factory HomeState.failed() = HomeStateFailed;
}