import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_player_state.freezed.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.initial() = VideoPlayerStateInitial;
  const factory VideoPlayerState.loading() = VideoPlayerStateLoading;
  const factory VideoPlayerState.success(bool isVideoPlaying) = VideoPlayerStateSuccess;
  const factory VideoPlayerState.failed() = VideoPlayerStateFailed;
}