import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';
import 'package:video_streaming/feature/video_player/state_notifier/video_player_state.dart';

class VideoPlayerStateNotifier extends StateNotifier<VideoPlayerState> {
  VideoPlayerStateNotifier(this.ref) : super(const VideoPlayerState.initial());

  final Ref ref;

  void initializeVideo(VideoPlayerController controller) async {
    state = const VideoPlayerState.loading();

    try {
      await controller.initialize();
      state = VideoPlayerState.success(controller.value.isPlaying);

    } catch (_){
      state = const VideoPlayerState.failed();
    }
  }

  void setVideoPlayingStatus(VideoPlayerController controller) {
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }

    state = VideoPlayerStateSuccess(controller.value.isPlaying);
  }
}